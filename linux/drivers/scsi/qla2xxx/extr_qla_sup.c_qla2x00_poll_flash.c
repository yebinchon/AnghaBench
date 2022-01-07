
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct qla_hw_data {int dummy; } ;


 int BIT_5 ;
 int BIT_7 ;
 int barrier () ;
 int cond_resched () ;
 int qla2x00_read_flash_byte (struct qla_hw_data*,int) ;
 int udelay (int) ;

__attribute__((used)) static int
qla2x00_poll_flash(struct qla_hw_data *ha, uint32_t addr, uint8_t poll_data,
    uint8_t man_id, uint8_t flash_id)
{
 int status;
 uint8_t flash_data;
 uint32_t cnt;

 status = 1;


 poll_data &= BIT_7;
 for (cnt = 3000000; cnt; cnt--) {
  flash_data = qla2x00_read_flash_byte(ha, addr);
  if ((flash_data & BIT_7) == poll_data) {
   status = 0;
   break;
  }

  if (man_id != 0x40 && man_id != 0xda) {
   if ((flash_data & BIT_5) && cnt > 2)
    cnt = 2;
  }
  udelay(10);
  barrier();
  cond_resched();
 }
 return status;
}
