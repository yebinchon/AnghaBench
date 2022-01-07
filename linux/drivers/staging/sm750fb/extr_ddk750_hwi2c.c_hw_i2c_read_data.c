
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ I2C_BYTE_COUNT ;
 scalar_t__ I2C_CTRL ;
 unsigned char I2C_CTRL_CTRL ;
 scalar_t__ I2C_DATA0 ;
 scalar_t__ I2C_RESET ;
 scalar_t__ I2C_SLAVE_ADDRESS ;
 unsigned int MAX_HWI2C_FIFO ;
 scalar_t__ hw_i2c_wait_tx_done () ;
 unsigned char peek32 (scalar_t__) ;
 int poke32 (scalar_t__,unsigned char) ;

__attribute__((used)) static unsigned int hw_i2c_read_data(unsigned char addr,
         unsigned int length,
         unsigned char *buf)
{
 unsigned char count, i;
 unsigned int total_bytes = 0;


 poke32(I2C_SLAVE_ADDRESS, addr | 0x01);






 do {




  poke32(I2C_RESET, 0);


  if (length <= MAX_HWI2C_FIFO)
   count = length - 1;
  else
   count = MAX_HWI2C_FIFO - 1;
  poke32(I2C_BYTE_COUNT, count);


  poke32(I2C_CTRL, peek32(I2C_CTRL) | I2C_CTRL_CTRL);


  if (hw_i2c_wait_tx_done() != 0)
   break;


  for (i = 0; i <= count; i++)
   *buf++ = peek32(I2C_DATA0 + i);


  length -= (count + 1);


  total_bytes += (count + 1);

 } while (length > 0);

 return total_bytes;
}
