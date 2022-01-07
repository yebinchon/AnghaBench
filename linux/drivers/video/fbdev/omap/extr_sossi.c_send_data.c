
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int SOSSI_FIFO_REG ;
 int sossi_write_reg (int ,int const) ;
 int sossi_write_reg16 (int ,int const) ;
 int sossi_write_reg8 (int ,int const) ;

__attribute__((used)) static void send_data(const void *data, unsigned int len)
{
 while (len >= 4) {
  sossi_write_reg(SOSSI_FIFO_REG, *(const u32 *) data);
  len -= 4;
  data += 4;
 }
 while (len >= 2) {
  sossi_write_reg16(SOSSI_FIFO_REG, *(const u16 *) data);
  len -= 2;
  data += 2;
 }
 while (len) {
  sossi_write_reg8(SOSSI_FIFO_REG, *(const u8 *) data);
  len--;
  data++;
 }
}
