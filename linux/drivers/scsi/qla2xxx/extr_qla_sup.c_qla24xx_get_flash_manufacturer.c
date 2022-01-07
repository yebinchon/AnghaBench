
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct qla_hw_data {int dummy; } ;


 scalar_t__ LSB (int) ;
 scalar_t__ MSB (int) ;
 int flash_conf_addr (struct qla_hw_data*,int) ;
 int qla24xx_read_flash_dword (struct qla_hw_data*,int,int*) ;

__attribute__((used)) static void
qla24xx_get_flash_manufacturer(struct qla_hw_data *ha, uint8_t *man_id,
    uint8_t *flash_id)
{
 uint32_t faddr, ids = 0;

 *man_id = *flash_id = 0;

 faddr = flash_conf_addr(ha, 0x03ab);
 if (!qla24xx_read_flash_dword(ha, faddr, &ids)) {
  *man_id = LSB(ids);
  *flash_id = MSB(ids);
 }


 if (ids != 0xDEADDEAD && (*man_id == 0 || *flash_id == 0)) {






  faddr = flash_conf_addr(ha, 0x009f);
  if (!qla24xx_read_flash_dword(ha, faddr, &ids)) {
   *man_id = LSB(ids);
   *flash_id = MSB(ids);
  }
 }
}
