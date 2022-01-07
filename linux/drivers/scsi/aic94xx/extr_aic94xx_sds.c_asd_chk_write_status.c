
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int bar; } ;
struct TYPE_3__ {TYPE_2__ flash; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;


 int FLASH_STATUS_BIT_MASK_DQ5 ;
 int FLASH_STATUS_BIT_MASK_DQ6 ;
 int FLASH_STATUS_ERASE_DELAY_COUNT ;
 int FLASH_STATUS_WRITE_DELAY_COUNT ;
 int asd_read_reg_byte (struct asd_ha_struct*,int) ;
 int udelay (int ) ;

int asd_chk_write_status(struct asd_ha_struct *asd_ha,
  u32 sector_addr, u8 erase_flag)
{
 u32 reg;
 u32 loop_cnt;
 u8 nv_data1, nv_data2;
 u8 toggle_bit1;





 reg = asd_ha->hw_prof.flash.bar;

 for (loop_cnt = 0; loop_cnt < 50000; loop_cnt++) {
  nv_data1 = asd_read_reg_byte(asd_ha, reg);
  nv_data2 = asd_read_reg_byte(asd_ha, reg);

  toggle_bit1 = ((nv_data1 & FLASH_STATUS_BIT_MASK_DQ6)
     ^ (nv_data2 & FLASH_STATUS_BIT_MASK_DQ6));

  if (toggle_bit1 == 0) {
   return 0;
  } else {
   if (nv_data2 & FLASH_STATUS_BIT_MASK_DQ5) {
    nv_data1 = asd_read_reg_byte(asd_ha,
        reg);
    nv_data2 = asd_read_reg_byte(asd_ha,
        reg);
    toggle_bit1 =
    ((nv_data1 & FLASH_STATUS_BIT_MASK_DQ6)
    ^ (nv_data2 & FLASH_STATUS_BIT_MASK_DQ6));

    if (toggle_bit1 == 0)
     return 0;
   }
  }
  if (erase_flag) {
   udelay(FLASH_STATUS_ERASE_DELAY_COUNT);
  } else {
   udelay(FLASH_STATUS_WRITE_DELAY_COUNT);
  }
 }
 return -1;
}
