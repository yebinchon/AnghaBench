
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int dummy; } ;


 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 int SPC_REG_RESET ;
 int SPC_REG_RESET_DEVICE ;
 int mdelay (int) ;
 int pm8001_cr32 (struct pm8001_hba_info*,int,int ) ;
 int pm8001_cw32 (struct pm8001_hba_info*,int,int ,int) ;
 int pm8001_printk (char*) ;
 int udelay (int) ;

__attribute__((used)) static void pm8001_hw_chip_rst(struct pm8001_hba_info *pm8001_ha)
{
 u32 i;
 u32 regVal;
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("chip reset start\n"));


 regVal = pm8001_cr32(pm8001_ha, 1, SPC_REG_RESET);
 regVal &= ~(SPC_REG_RESET_DEVICE);
 pm8001_cw32(pm8001_ha, 1, SPC_REG_RESET, regVal);


 udelay(10);


 regVal = pm8001_cr32(pm8001_ha, 1, SPC_REG_RESET);
 regVal |= SPC_REG_RESET_DEVICE;
 pm8001_cw32(pm8001_ha, 1, SPC_REG_RESET, regVal);


 udelay(10);


 i = 20;
 do {
  mdelay(1);
 } while ((--i) != 0);

 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("chip reset finished\n"));
}
