
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_bci {int ac_cur; int ac_is_active; int usb_cur; int usb_cur_target; int ichg_eoc; int ichg_lo; int ichg_hi; int current_worker; int channel_vac; } ;


 int TWL4030_BCICTL1 ;
 int TWL4030_BCIIREF1 ;
 int TWL4030_BCIIREF2 ;
 int TWL4030_BCIMFKEY ;
 int TWL4030_BCIMFTH8 ;
 int TWL4030_BCIMFTH9 ;
 int TWL4030_CGAIN ;
 int TWL4030_PM_MASTER_BOOT_BCI ;
 int TWL_MODULE_MAIN_CHARGE ;
 int TWL_MODULE_PM_MASTER ;
 int USB_CUR_DELAY ;
 scalar_t__ ac_available (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int twl4030_bci_read (int ,int*) ;
 int twl4030_clear_set_boot_bci (int,int) ;
 scalar_t__ twl_i2c_read_u8 (int ,int*,int ) ;
 int twl_i2c_write_u8 (int ,int,int ) ;
 unsigned int ua2regval (int,int) ;

__attribute__((used)) static int twl4030_charger_update_current(struct twl4030_bci *bci)
{
 int status;
 int cur;
 unsigned reg, cur_reg;
 u8 bcictl1, oldreg, fullreg;
 bool cgain = 0;
 u8 boot_bci;





 if (ac_available(bci->channel_vac)) {
  cur = bci->ac_cur;
  bci->ac_is_active = 1;
 } else {
  cur = bci->usb_cur;
  bci->ac_is_active = 0;
  if (cur > bci->usb_cur_target) {
   cur = bci->usb_cur_target;
   bci->usb_cur = cur;
  }
  if (cur < bci->usb_cur_target)
   schedule_delayed_work(&bci->current_worker, USB_CUR_DELAY);
 }


 if (bci->ichg_eoc >= 200000)
  cgain = 1;
 if (bci->ichg_lo >= 400000)
  cgain = 1;
 if (bci->ichg_hi >= 820000)
  cgain = 1;
 if (cur > 852000)
  cgain = 1;

 status = twl4030_bci_read(TWL4030_BCICTL1, &bcictl1);
 if (status < 0)
  return status;
 if (twl_i2c_read_u8(TWL_MODULE_PM_MASTER, &boot_bci,
       TWL4030_PM_MASTER_BOOT_BCI) < 0)
  boot_bci = 0;
 boot_bci &= 7;

 if ((!!cgain) != !!(bcictl1 & TWL4030_CGAIN))




  twl4030_clear_set_boot_bci(boot_bci, 0);






 reg = ua2regval(bci->ichg_eoc, cgain);
 if (reg > 0x278)
  reg = 0x278;
 if (reg < 0x200)
  reg = 0x200;
 reg = (reg >> 3) & 0xf;
 fullreg = reg << 4;





 reg = ua2regval(bci->ichg_lo, cgain);
 if (reg > 0x2F0)
  reg = 0x2F0;
 if (reg < 0x200)
  reg = 0x200;
 reg = (reg >> 4) & 0xf;
 fullreg |= reg;


 status = twl4030_bci_read(TWL4030_BCIMFTH8, &oldreg);
 if (status < 0)
  return status;
 if (oldreg != fullreg) {
  status = twl_i2c_write_u8(TWL_MODULE_MAIN_CHARGE, 0xF4,
       TWL4030_BCIMFKEY);
  if (status < 0)
   return status;
  twl_i2c_write_u8(TWL_MODULE_MAIN_CHARGE,
     fullreg, TWL4030_BCIMFTH8);
 }


 reg = ua2regval(bci->ichg_hi, cgain);
 if (reg > 0x3E0)
  reg = 0x3E0;
 if (reg < 0x200)
  reg = 0x200;
 fullreg = (reg >> 5) & 0xF;
 fullreg <<= 4;
 status = twl4030_bci_read(TWL4030_BCIMFTH9, &oldreg);
 if (status < 0)
  return status;
 if ((oldreg & 0xF0) != fullreg) {
  fullreg |= (oldreg & 0x0F);
  status = twl_i2c_write_u8(TWL_MODULE_MAIN_CHARGE, 0xE7,
       TWL4030_BCIMFKEY);
  if (status < 0)
   return status;
  twl_i2c_write_u8(TWL_MODULE_MAIN_CHARGE,
     fullreg, TWL4030_BCIMFTH9);
 }





 reg = ua2regval(cur, cgain);

 if (reg > 0x3ff)
  reg = 0x3ff;
 status = twl4030_bci_read(TWL4030_BCIIREF1, &oldreg);
 if (status < 0)
  return status;
 cur_reg = oldreg;
 status = twl4030_bci_read(TWL4030_BCIIREF2, &oldreg);
 if (status < 0)
  return status;
 cur_reg |= oldreg << 8;
 if (reg != oldreg) {


  status = twl_i2c_write_u8(TWL_MODULE_MAIN_CHARGE, 0xE7,
       TWL4030_BCIMFKEY);
  if (status < 0)
   return status;
  status = twl_i2c_write_u8(TWL_MODULE_MAIN_CHARGE,
       (reg & 0x100) ? 3 : 2,
       TWL4030_BCIIREF2);
  if (status < 0)
   return status;


  status = twl_i2c_write_u8(TWL_MODULE_MAIN_CHARGE, 0xE7,
       TWL4030_BCIMFKEY);
  if (status < 0)
   return status;
  status = twl_i2c_write_u8(TWL_MODULE_MAIN_CHARGE,
       reg & 0xff,
       TWL4030_BCIIREF1);
 }
 if ((!!cgain) != !!(bcictl1 & TWL4030_CGAIN)) {

  bcictl1 ^= TWL4030_CGAIN;
  twl_i2c_write_u8(TWL_MODULE_MAIN_CHARGE,
     bcictl1, TWL4030_BCICTL1);
  twl4030_clear_set_boot_bci(0, boot_bci);
 }
 return 0;
}
