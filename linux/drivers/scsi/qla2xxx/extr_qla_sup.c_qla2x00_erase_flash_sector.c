
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct qla_hw_data {int dummy; } ;


 int qla2x00_poll_flash (struct qla_hw_data*,int,int,int,int) ;
 int qla2x00_write_flash_byte (struct qla_hw_data*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int
qla2x00_erase_flash_sector(struct qla_hw_data *ha, uint32_t addr,
    uint32_t sec_mask, uint8_t man_id, uint8_t flash_id)
{

 qla2x00_write_flash_byte(ha, 0x5555, 0xaa);
 qla2x00_write_flash_byte(ha, 0x2aaa, 0x55);
 qla2x00_write_flash_byte(ha, 0x5555, 0x80);
 qla2x00_write_flash_byte(ha, 0x5555, 0xaa);
 qla2x00_write_flash_byte(ha, 0x2aaa, 0x55);
 if (man_id == 0x1f && flash_id == 0x13)
  qla2x00_write_flash_byte(ha, addr & sec_mask, 0x10);
 else
  qla2x00_write_flash_byte(ha, addr & sec_mask, 0x30);

 udelay(150);


 return qla2x00_poll_flash(ha, addr, 0x80, man_id, flash_id);
}
