
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PMC_CFG_NO_REBOOT_DIS ;
 int PMC_CFG_NO_REBOOT_EN ;
 int PMC_CFG_NO_REBOOT_MASK ;
 int PMC_GCR_PMC_CFG_REG ;
 int intel_pmc_gcr_update (int ,int ,int ) ;

__attribute__((used)) static int update_no_reboot_bit(void *priv, bool set)
{
 u32 value = set ? PMC_CFG_NO_REBOOT_EN : PMC_CFG_NO_REBOOT_DIS;

 return intel_pmc_gcr_update(PMC_GCR_PMC_CFG_REG,
        PMC_CFG_NO_REBOOT_MASK, value);
}
