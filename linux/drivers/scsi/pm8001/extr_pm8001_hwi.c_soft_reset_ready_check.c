
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int lock; } ;


 int MSGU_SCRATCH_PAD_0 ;
 int MSGU_SCRATCH_PAD_1 ;
 int MSGU_SCRATCH_PAD_2 ;
 int MSGU_SCRATCH_PAD_3 ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 int RB6_ACCESS_REG ;
 int RB6_MAGIC_NUMBER_RST ;
 int SCRATCH_PAD2_FWRDY_RST ;
 int SPC_RB6_OFFSET ;
 int mdelay (int) ;
 scalar_t__ mpi_uninit_check (struct pm8001_hba_info*) ;
 int pm8001_bar4_shift (struct pm8001_hba_info*,int) ;
 int pm8001_cr32 (struct pm8001_hba_info*,int ,int ) ;
 int pm8001_cw32 (struct pm8001_hba_info*,int,int ,int ) ;
 int pm8001_printk (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 soft_reset_ready_check(struct pm8001_hba_info *pm8001_ha)
{
 u32 regVal, regVal1, regVal2;
 if (mpi_uninit_check(pm8001_ha) != 0) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("MPI state is not ready\n"));
  return -1;
 }

 regVal = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_2)
  & SCRATCH_PAD2_FWRDY_RST;
 if (regVal == SCRATCH_PAD2_FWRDY_RST) {
  PM8001_INIT_DBG(pm8001_ha,
   pm8001_printk("Firmware is ready for reset .\n"));
 } else {
  unsigned long flags;

  spin_lock_irqsave(&pm8001_ha->lock, flags);
  if (-1 == pm8001_bar4_shift(pm8001_ha, RB6_ACCESS_REG)) {
   spin_unlock_irqrestore(&pm8001_ha->lock, flags);
   PM8001_FAIL_DBG(pm8001_ha,
    pm8001_printk("Shift Bar4 to 0x%x failed\n",
     RB6_ACCESS_REG));
   return -1;
  }
  pm8001_cw32(pm8001_ha, 2, SPC_RB6_OFFSET,
   RB6_MAGIC_NUMBER_RST);
  pm8001_cw32(pm8001_ha, 2, SPC_RB6_OFFSET, RB6_MAGIC_NUMBER_RST);

  mdelay(100);
  regVal = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_2) &
   SCRATCH_PAD2_FWRDY_RST;
  if (regVal != SCRATCH_PAD2_FWRDY_RST) {
   regVal1 = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_1);
   regVal2 = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_2);
   PM8001_FAIL_DBG(pm8001_ha,
    pm8001_printk("TIMEOUT:MSGU_SCRATCH_PAD1"
    "=0x%x, MSGU_SCRATCH_PAD2=0x%x\n",
    regVal1, regVal2));
   PM8001_FAIL_DBG(pm8001_ha,
    pm8001_printk("SCRATCH_PAD0 value = 0x%x\n",
    pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_0)));
   PM8001_FAIL_DBG(pm8001_ha,
    pm8001_printk("SCRATCH_PAD3 value = 0x%x\n",
    pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_3)));
   spin_unlock_irqrestore(&pm8001_ha->lock, flags);
   return -1;
  }
  spin_unlock_irqrestore(&pm8001_ha->lock, flags);
 }
 return 0;
}
