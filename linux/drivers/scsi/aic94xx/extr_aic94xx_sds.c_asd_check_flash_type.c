
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int bar; scalar_t__ method; int manuf; int dev_id; int sec_prot; scalar_t__ wide; } ;
struct TYPE_4__ {TYPE_1__ flash; } ;
struct asd_ha_struct {TYPE_2__ hw_prof; } ;


 int ASD_DPRINTK (char*,int,...) ;
 int FAIL_FIND_FLASH_ID ;
 int FLASH_DEV_ID_UNKNOWN ;





 int FLASH_MANUF_ID_UNKNOWN ;
 void* FLASH_METHOD_A ;
 void* FLASH_METHOD_B ;
 scalar_t__ FLASH_METHOD_UNKNOWN ;
 int asd_read_reg_byte (struct asd_ha_struct*,int) ;
 int asd_reset_flash (struct asd_ha_struct*) ;
 int asd_write_reg_byte (struct asd_ha_struct*,int,int) ;

int asd_check_flash_type(struct asd_ha_struct *asd_ha)
{
 u8 manuf_id;
 u8 dev_id;
 u8 sec_prot;
 u32 inc;
 u32 reg;
 int err;


 reg = asd_ha->hw_prof.flash.bar;


 err = asd_reset_flash(asd_ha);
 if (err) {
  ASD_DPRINTK("couldn't reset flash. err=%d\n", err);
  return err;
 }

 asd_ha->hw_prof.flash.method = FLASH_METHOD_UNKNOWN;
 asd_ha->hw_prof.flash.manuf = FLASH_MANUF_ID_UNKNOWN;
 asd_ha->hw_prof.flash.dev_id = FLASH_DEV_ID_UNKNOWN;





 inc = asd_ha->hw_prof.flash.wide ? 2 : 1;
 asd_write_reg_byte(asd_ha, reg + 0xAAA, 0xAA);
 asd_write_reg_byte(asd_ha, reg + 0x555, 0x55);
 asd_write_reg_byte(asd_ha, reg + 0xAAA, 0x90);
 manuf_id = asd_read_reg_byte(asd_ha, reg);
 dev_id = asd_read_reg_byte(asd_ha, reg + inc);
 sec_prot = asd_read_reg_byte(asd_ha, reg + inc + inc);

 err = asd_reset_flash(asd_ha);
 if (err) {
  ASD_DPRINTK("couldn't reset flash. err=%d\n", err);
  return err;
 }
 ASD_DPRINTK("Flash MethodA manuf_id(0x%x) dev_id(0x%x) "
  "sec_prot(0x%x)\n", manuf_id, dev_id, sec_prot);
 err = asd_reset_flash(asd_ha);
 if (err != 0)
  return err;

 switch (manuf_id) {
 case 132:
  switch (sec_prot) {
  case 141:
  case 142:
  case 144:
   asd_ha->hw_prof.flash.method = FLASH_METHOD_A;
   break;
  default:
   break;
  }
  break;
 case 128:
  switch (sec_prot) {
  case 133:
  case 134:
   asd_ha->hw_prof.flash.method = FLASH_METHOD_A;
   break;
  default:
   break;
  }
  break;
 case 131:
  switch (sec_prot) {
  case 137:
  case 139:
   asd_ha->hw_prof.flash.method = FLASH_METHOD_A;
   break;
  }
  break;
 case 129:
  switch (sec_prot) {
  case 136:
   asd_ha->hw_prof.flash.method = FLASH_METHOD_A;
   break;
  }
  break;
 }

 if (asd_ha->hw_prof.flash.method == FLASH_METHOD_UNKNOWN) {
  err = asd_reset_flash(asd_ha);
  if (err) {
   ASD_DPRINTK("couldn't reset flash. err=%d\n", err);
   return err;
  }


  asd_write_reg_byte(asd_ha, (reg + 0x555), 0xAA);
  asd_write_reg_byte(asd_ha, (reg + 0x2AA), 0x55);
  asd_write_reg_byte(asd_ha, (reg + 0x555), 0x90);
  manuf_id = asd_read_reg_byte(asd_ha, reg);
  dev_id = asd_read_reg_byte(asd_ha, reg + inc);
  sec_prot = asd_read_reg_byte(asd_ha, reg + inc + inc);

  ASD_DPRINTK("Flash MethodB manuf_id(0x%x) dev_id(0x%x) sec_prot"
   "(0x%x)\n", manuf_id, dev_id, sec_prot);

  err = asd_reset_flash(asd_ha);
  if (err != 0) {
   ASD_DPRINTK("couldn't reset flash. err=%d\n", err);
   return err;
  }

  switch (manuf_id) {
  case 132:
   switch (dev_id) {
   case 143:
    asd_ha->hw_prof.flash.method = FLASH_METHOD_B;
    break;
   default:
    break;
   }
   break;
  case 128:
   switch (dev_id) {
   case 135:
    asd_ha->hw_prof.flash.method = FLASH_METHOD_B;
    break;
   default:
    break;
   }
   break;
  case 131:
   switch (dev_id) {
   case 138:
    asd_ha->hw_prof.flash.method = FLASH_METHOD_B;
    break;
   }
   break;
  case 130:
   switch (dev_id) {
   case 140:
    asd_ha->hw_prof.flash.method = FLASH_METHOD_B;
    break;
   }
   break;
  case 129:
   switch (dev_id) {
   case 140:
    asd_ha->hw_prof.flash.method = FLASH_METHOD_B;
    break;
   }
   break;
  default:
   return FAIL_FIND_FLASH_ID;
  }
 }

 if (asd_ha->hw_prof.flash.method == FLASH_METHOD_UNKNOWN)
       return FAIL_FIND_FLASH_ID;

 asd_ha->hw_prof.flash.manuf = manuf_id;
 asd_ha->hw_prof.flash.dev_id = dev_id;
 asd_ha->hw_prof.flash.sec_prot = sec_prot;
 return 0;
}
