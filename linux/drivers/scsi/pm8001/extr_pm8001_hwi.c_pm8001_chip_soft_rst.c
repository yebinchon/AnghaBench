
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int lock; } ;


 int GPIO_ADDR_BASE ;
 int GPIO_GPIO_0_0UTPUT_CTL_OFFSET ;
 int GSM_ADDR_BASE ;
 int GSM_CONFIG_RESET ;
 int GSM_CONFIG_RESET_VALUE ;
 int GSM_READ_ADDR_PARITY_CHECK ;
 int GSM_WRITE_ADDR_PARITY_CHECK ;
 int GSM_WRITE_DATA_PARITY_CHECK ;
 int MBIC_AAP1_ADDR_BASE ;
 int MBIC_IOP_ADDR_BASE ;
 int MBIC_NMI_ENABLE_VPE0_AAP1 ;
 int MBIC_NMI_ENABLE_VPE0_IOP ;
 int MSGU_HOST_SCRATCH_PAD_0 ;
 int MSGU_ODCR ;
 int MSGU_ODMR ;
 int MSGU_SCRATCH_PAD_0 ;
 int MSGU_SCRATCH_PAD_1 ;
 int MSGU_SCRATCH_PAD_2 ;
 int MSGU_SCRATCH_PAD_3 ;
 int ODCR_CLEAR_ALL ;
 int ODMR_CLEAR_ALL ;
 int PCIE_ERROR_INTERRUPT ;
 int PCIE_ERROR_INTERRUPT_ENABLE ;
 int PCIE_EVENT_INTERRUPT ;
 int PCIE_EVENT_INTERRUPT_ENABLE ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 int SCRATCH_PAD1_RST ;
 int SPC_REG_RESET ;
 int SPC_REG_RESET_BDMA_CORE ;
 int SPC_REG_RESET_OSSP ;
 int SPC_REG_RESET_PCS_AAP1_SS ;
 int SPC_REG_RESET_PCS_IOP_SS ;
 int SPC_SOFT_RESET_SIGNATURE ;
 int SPC_TOP_LEVEL_ADDR_BASE ;
 int check_fw_ready (struct pm8001_hba_info*) ;
 int pm8001_bar4_shift (struct pm8001_hba_info*,int ) ;
 int pm8001_cr32 (struct pm8001_hba_info*,int,int ) ;
 int pm8001_cw32 (struct pm8001_hba_info*,int,int ,int) ;
 int pm8001_printk (char*,...) ;
 scalar_t__ soft_reset_ready_check (struct pm8001_hba_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int
pm8001_chip_soft_rst(struct pm8001_hba_info *pm8001_ha)
{
 u32 regVal, toggleVal;
 u32 max_wait_count;
 u32 regVal1, regVal2, regVal3;
 u32 signature = 0x252acbcd;
 unsigned long flags;


 if (soft_reset_ready_check(pm8001_ha) != 0) {
  PM8001_FAIL_DBG(pm8001_ha, pm8001_printk("FW is not ready\n"));
  return -1;
 }




 spin_lock_irqsave(&pm8001_ha->lock, flags);
 if (-1 == pm8001_bar4_shift(pm8001_ha, MBIC_AAP1_ADDR_BASE)) {
  spin_unlock_irqrestore(&pm8001_ha->lock, flags);
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("Shift Bar4 to 0x%x failed\n",
   MBIC_AAP1_ADDR_BASE));
  return -1;
 }
 regVal = pm8001_cr32(pm8001_ha, 2, MBIC_NMI_ENABLE_VPE0_IOP);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("MBIC - NMI Enable VPE0 (IOP)= 0x%x\n", regVal));
 pm8001_cw32(pm8001_ha, 2, MBIC_NMI_ENABLE_VPE0_IOP, 0x0);

 if (-1 == pm8001_bar4_shift(pm8001_ha, MBIC_IOP_ADDR_BASE)) {
  spin_unlock_irqrestore(&pm8001_ha->lock, flags);
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("Shift Bar4 to 0x%x failed\n",
   MBIC_IOP_ADDR_BASE));
  return -1;
 }
 regVal = pm8001_cr32(pm8001_ha, 2, MBIC_NMI_ENABLE_VPE0_AAP1);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("MBIC - NMI Enable VPE0 (AAP1)= 0x%x\n", regVal));
 pm8001_cw32(pm8001_ha, 2, MBIC_NMI_ENABLE_VPE0_AAP1, 0x0);

 regVal = pm8001_cr32(pm8001_ha, 1, PCIE_EVENT_INTERRUPT_ENABLE);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("PCIE -Event Interrupt Enable = 0x%x\n", regVal));
 pm8001_cw32(pm8001_ha, 1, PCIE_EVENT_INTERRUPT_ENABLE, 0x0);

 regVal = pm8001_cr32(pm8001_ha, 1, PCIE_EVENT_INTERRUPT);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("PCIE - Event Interrupt  = 0x%x\n", regVal));
 pm8001_cw32(pm8001_ha, 1, PCIE_EVENT_INTERRUPT, regVal);

 regVal = pm8001_cr32(pm8001_ha, 1, PCIE_ERROR_INTERRUPT_ENABLE);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("PCIE -Error Interrupt Enable = 0x%x\n", regVal));
 pm8001_cw32(pm8001_ha, 1, PCIE_ERROR_INTERRUPT_ENABLE, 0x0);

 regVal = pm8001_cr32(pm8001_ha, 1, PCIE_ERROR_INTERRUPT);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("PCIE - Error Interrupt = 0x%x\n", regVal));
 pm8001_cw32(pm8001_ha, 1, PCIE_ERROR_INTERRUPT, regVal);


 regVal = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_1)
  & SCRATCH_PAD1_RST;
 toggleVal = regVal ^ SCRATCH_PAD1_RST;



 pm8001_cw32(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_0, signature);



 if (-1 == pm8001_bar4_shift(pm8001_ha, GSM_ADDR_BASE)) {
  spin_unlock_irqrestore(&pm8001_ha->lock, flags);
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("Shift Bar4 to 0x%x failed\n",
   GSM_ADDR_BASE));
  return -1;
 }
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM 0x0(0x00007b88)-GSM Configuration and"
  " Reset = 0x%x\n",
  pm8001_cr32(pm8001_ha, 2, GSM_CONFIG_RESET)));


 regVal = pm8001_cr32(pm8001_ha, 2, GSM_CONFIG_RESET);
 regVal &= ~(0x00003b00);

 pm8001_cw32(pm8001_ha, 2, GSM_CONFIG_RESET, regVal);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM 0x0 (0x00007b88 ==> 0x00004088) - GSM "
  "Configuration and Reset is set to = 0x%x\n",
  pm8001_cr32(pm8001_ha, 2, GSM_CONFIG_RESET)));



 regVal1 = pm8001_cr32(pm8001_ha, 2, GSM_READ_ADDR_PARITY_CHECK);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM 0x700038 - Read Address Parity Check "
  "Enable = 0x%x\n", regVal1));
 pm8001_cw32(pm8001_ha, 2, GSM_READ_ADDR_PARITY_CHECK, 0x0);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM 0x700038 - Read Address Parity Check Enable"
  "is set to = 0x%x\n",
  pm8001_cr32(pm8001_ha, 2, GSM_READ_ADDR_PARITY_CHECK)));


 regVal2 = pm8001_cr32(pm8001_ha, 2, GSM_WRITE_ADDR_PARITY_CHECK);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM 0x700040 - Write Address Parity Check"
  " Enable = 0x%x\n", regVal2));
 pm8001_cw32(pm8001_ha, 2, GSM_WRITE_ADDR_PARITY_CHECK, 0x0);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM 0x700040 - Write Address Parity Check "
  "Enable is set to = 0x%x\n",
  pm8001_cr32(pm8001_ha, 2, GSM_WRITE_ADDR_PARITY_CHECK)));


 regVal3 = pm8001_cr32(pm8001_ha, 2, GSM_WRITE_DATA_PARITY_CHECK);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM 0x300048 - Write Data Parity Check"
  " Enable = 0x%x\n", regVal3));
 pm8001_cw32(pm8001_ha, 2, GSM_WRITE_DATA_PARITY_CHECK, 0x0);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM 0x300048 - Write Data Parity Check Enable"
  "is set to = 0x%x\n",
 pm8001_cr32(pm8001_ha, 2, GSM_WRITE_DATA_PARITY_CHECK)));


 udelay(10);

 if (-1 == pm8001_bar4_shift(pm8001_ha, GPIO_ADDR_BASE)) {
  spin_unlock_irqrestore(&pm8001_ha->lock, flags);
  PM8001_INIT_DBG(pm8001_ha,
    pm8001_printk("Shift Bar4 to 0x%x failed\n",
    GPIO_ADDR_BASE));
  return -1;
 }
 regVal = pm8001_cr32(pm8001_ha, 2, GPIO_GPIO_0_0UTPUT_CTL_OFFSET);
 PM8001_INIT_DBG(pm8001_ha,
   pm8001_printk("GPIO Output Control Register:"
   " = 0x%x\n", regVal));

 regVal &= 0xFFFFFFFC;
 pm8001_cw32(pm8001_ha, 2, GPIO_GPIO_0_0UTPUT_CTL_OFFSET, regVal);



 if (-1 == pm8001_bar4_shift(pm8001_ha, SPC_TOP_LEVEL_ADDR_BASE)) {
  spin_unlock_irqrestore(&pm8001_ha->lock, flags);
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("SPC Shift Bar4 to 0x%x failed\n",
   SPC_TOP_LEVEL_ADDR_BASE));
  return -1;
 }
 regVal = pm8001_cr32(pm8001_ha, 2, SPC_REG_RESET);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("Top Register before resetting IOP/AAP1"
  ":= 0x%x\n", regVal));
 regVal &= ~(SPC_REG_RESET_PCS_IOP_SS | SPC_REG_RESET_PCS_AAP1_SS);
 pm8001_cw32(pm8001_ha, 2, SPC_REG_RESET, regVal);


 regVal = pm8001_cr32(pm8001_ha, 2, SPC_REG_RESET);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("Top Register before resetting BDMA/OSSP"
  ": = 0x%x\n", regVal));
 regVal &= ~(SPC_REG_RESET_BDMA_CORE | SPC_REG_RESET_OSSP);
 pm8001_cw32(pm8001_ha, 2, SPC_REG_RESET, regVal);


 udelay(10);


 regVal = pm8001_cr32(pm8001_ha, 2, SPC_REG_RESET);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("Top Register before bringing up BDMA/OSSP"
  ":= 0x%x\n", regVal));
 regVal |= (SPC_REG_RESET_BDMA_CORE | SPC_REG_RESET_OSSP);
 pm8001_cw32(pm8001_ha, 2, SPC_REG_RESET, regVal);


 udelay(10);



 if (-1 == pm8001_bar4_shift(pm8001_ha, GSM_ADDR_BASE)) {
  spin_unlock_irqrestore(&pm8001_ha->lock, flags);
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("SPC Shift Bar4 to 0x%x failed\n",
   GSM_ADDR_BASE));
  return -1;
 }
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM 0x0 (0x00007b88)-GSM Configuration and "
  "Reset = 0x%x\n", pm8001_cr32(pm8001_ha, 2, GSM_CONFIG_RESET)));
 regVal = pm8001_cr32(pm8001_ha, 2, GSM_CONFIG_RESET);
 regVal |= (GSM_CONFIG_RESET_VALUE);
 pm8001_cw32(pm8001_ha, 2, GSM_CONFIG_RESET, regVal);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM (0x00004088 ==> 0x00007b88) - GSM"
  " Configuration and Reset is set to = 0x%x\n",
  pm8001_cr32(pm8001_ha, 2, GSM_CONFIG_RESET)));


 regVal = pm8001_cr32(pm8001_ha, 2, GSM_READ_ADDR_PARITY_CHECK);

 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM 0x700038 - Read Address Parity Check Enable"
  " = 0x%x\n", regVal));
 pm8001_cw32(pm8001_ha, 2, GSM_READ_ADDR_PARITY_CHECK, regVal1);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM 0x700038 - Read Address Parity"
  " Check Enable is set to = 0x%x\n",
  pm8001_cr32(pm8001_ha, 2, GSM_READ_ADDR_PARITY_CHECK)));

 regVal = pm8001_cr32(pm8001_ha, 2, GSM_WRITE_ADDR_PARITY_CHECK);
 pm8001_cw32(pm8001_ha, 2, GSM_WRITE_ADDR_PARITY_CHECK, regVal2);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM 0x700040 - Write Address Parity Check"
  " Enable is set to = 0x%x\n",
  pm8001_cr32(pm8001_ha, 2, GSM_WRITE_ADDR_PARITY_CHECK)));

 regVal = pm8001_cr32(pm8001_ha, 2, GSM_WRITE_DATA_PARITY_CHECK);
 pm8001_cw32(pm8001_ha, 2, GSM_WRITE_DATA_PARITY_CHECK, regVal3);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("GSM 0x700048 - Write Data Parity Check Enable"
  "is set to = 0x%x\n",
  pm8001_cr32(pm8001_ha, 2, GSM_WRITE_DATA_PARITY_CHECK)));



 if (-1 == pm8001_bar4_shift(pm8001_ha, SPC_TOP_LEVEL_ADDR_BASE)) {
  spin_unlock_irqrestore(&pm8001_ha->lock, flags);
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("Shift Bar4 to 0x%x failed\n",
   SPC_TOP_LEVEL_ADDR_BASE));
  return -1;
 }
 regVal = pm8001_cr32(pm8001_ha, 2, SPC_REG_RESET);
 regVal |= (SPC_REG_RESET_PCS_IOP_SS | SPC_REG_RESET_PCS_AAP1_SS);
 pm8001_cw32(pm8001_ha, 2, SPC_REG_RESET, regVal);


 udelay(10);

 if (signature == SPC_SOFT_RESET_SIGNATURE) {


  max_wait_count = 2 * 1000 * 1000;
  do {
   udelay(1);
   regVal = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_1) &
    SCRATCH_PAD1_RST;
  } while ((regVal != toggleVal) && (--max_wait_count));

  if (!max_wait_count) {
   regVal = pm8001_cr32(pm8001_ha, 0,
    MSGU_SCRATCH_PAD_1);
   PM8001_FAIL_DBG(pm8001_ha,
    pm8001_printk("TIMEOUT : ToggleVal 0x%x,"
    "MSGU_SCRATCH_PAD1 = 0x%x\n",
    toggleVal, regVal));
   PM8001_FAIL_DBG(pm8001_ha,
    pm8001_printk("SCRATCH_PAD0 value = 0x%x\n",
    pm8001_cr32(pm8001_ha, 0,
    MSGU_SCRATCH_PAD_0)));
   PM8001_FAIL_DBG(pm8001_ha,
    pm8001_printk("SCRATCH_PAD2 value = 0x%x\n",
    pm8001_cr32(pm8001_ha, 0,
    MSGU_SCRATCH_PAD_2)));
   PM8001_FAIL_DBG(pm8001_ha,
    pm8001_printk("SCRATCH_PAD3 value = 0x%x\n",
    pm8001_cr32(pm8001_ha, 0,
    MSGU_SCRATCH_PAD_3)));
   spin_unlock_irqrestore(&pm8001_ha->lock, flags);
   return -1;
  }


  pm8001_cw32(pm8001_ha, 0, MSGU_ODCR, ODCR_CLEAR_ALL);
  pm8001_cw32(pm8001_ha, 0, MSGU_ODMR, ODMR_CLEAR_ALL);




  if (check_fw_ready(pm8001_ha) == -1) {
   regVal = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_1);

   PM8001_INIT_DBG(pm8001_ha,
    pm8001_printk("FW not ready SCRATCH_PAD1"
    " = 0x%x\n", regVal));
   regVal = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_2);

   PM8001_INIT_DBG(pm8001_ha,
    pm8001_printk("FW not ready SCRATCH_PAD2"
    " = 0x%x\n", regVal));
   PM8001_INIT_DBG(pm8001_ha,
    pm8001_printk("SCRATCH_PAD0 value = 0x%x\n",
    pm8001_cr32(pm8001_ha, 0,
    MSGU_SCRATCH_PAD_0)));
   PM8001_INIT_DBG(pm8001_ha,
    pm8001_printk("SCRATCH_PAD3 value = 0x%x\n",
    pm8001_cr32(pm8001_ha, 0,
    MSGU_SCRATCH_PAD_3)));
   spin_unlock_irqrestore(&pm8001_ha->lock, flags);
   return -1;
  }
 }
 pm8001_bar4_shift(pm8001_ha, 0);
 spin_unlock_irqrestore(&pm8001_ha->lock, flags);

 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("SPC soft reset Complete\n"));
 return 0;
}
