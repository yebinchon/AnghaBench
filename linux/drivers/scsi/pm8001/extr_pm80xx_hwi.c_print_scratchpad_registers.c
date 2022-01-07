
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8001_hba_info {int dummy; } ;


 int MSGU_HOST_SCRATCH_PAD_0 ;
 int MSGU_HOST_SCRATCH_PAD_1 ;
 int MSGU_HOST_SCRATCH_PAD_2 ;
 int MSGU_HOST_SCRATCH_PAD_3 ;
 int MSGU_HOST_SCRATCH_PAD_4 ;
 int MSGU_HOST_SCRATCH_PAD_5 ;
 int MSGU_HOST_SCRATCH_PAD_6 ;
 int MSGU_HOST_SCRATCH_PAD_7 ;
 int MSGU_SCRATCH_PAD_0 ;
 int MSGU_SCRATCH_PAD_1 ;
 int MSGU_SCRATCH_PAD_2 ;
 int MSGU_SCRATCH_PAD_3 ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int pm8001_cr32 (struct pm8001_hba_info*,int ,int ) ;
 int pm8001_printk (char*,int ) ;

__attribute__((used)) static void print_scratchpad_registers(struct pm8001_hba_info *pm8001_ha)
{
 PM8001_FAIL_DBG(pm8001_ha,
  pm8001_printk("MSGU_SCRATCH_PAD_0: 0x%x\n",
   pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_0)));
 PM8001_FAIL_DBG(pm8001_ha,
  pm8001_printk("MSGU_SCRATCH_PAD_1:0x%x\n",
   pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_1)));
 PM8001_FAIL_DBG(pm8001_ha,
  pm8001_printk("MSGU_SCRATCH_PAD_2: 0x%x\n",
   pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_2)));
 PM8001_FAIL_DBG(pm8001_ha,
  pm8001_printk("MSGU_SCRATCH_PAD_3: 0x%x\n",
   pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_3)));
 PM8001_FAIL_DBG(pm8001_ha,
  pm8001_printk("MSGU_HOST_SCRATCH_PAD_0: 0x%x\n",
   pm8001_cr32(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_0)));
 PM8001_FAIL_DBG(pm8001_ha,
  pm8001_printk("MSGU_HOST_SCRATCH_PAD_1: 0x%x\n",
   pm8001_cr32(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_1)));
 PM8001_FAIL_DBG(pm8001_ha,
  pm8001_printk("MSGU_HOST_SCRATCH_PAD_2: 0x%x\n",
   pm8001_cr32(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_2)));
 PM8001_FAIL_DBG(pm8001_ha,
  pm8001_printk("MSGU_HOST_SCRATCH_PAD_3: 0x%x\n",
   pm8001_cr32(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_3)));
 PM8001_FAIL_DBG(pm8001_ha,
  pm8001_printk("MSGU_HOST_SCRATCH_PAD_4: 0x%x\n",
   pm8001_cr32(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_4)));
 PM8001_FAIL_DBG(pm8001_ha,
  pm8001_printk("MSGU_HOST_SCRATCH_PAD_5: 0x%x\n",
   pm8001_cr32(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_5)));
 PM8001_FAIL_DBG(pm8001_ha,
  pm8001_printk("MSGU_RSVD_SCRATCH_PAD_0: 0x%x\n",
   pm8001_cr32(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_6)));
 PM8001_FAIL_DBG(pm8001_ha,
  pm8001_printk("MSGU_RSVD_SCRATCH_PAD_1: 0x%x\n",
   pm8001_cr32(pm8001_ha, 0, MSGU_HOST_SCRATCH_PAD_7)));
}
