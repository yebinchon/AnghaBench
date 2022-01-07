
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hw_i2c_read_data (unsigned char,int,unsigned char*) ;
 int hw_i2c_write_data (unsigned char,int,unsigned char*) ;

unsigned char sm750_hw_i2c_read_reg(unsigned char addr, unsigned char reg)
{
 unsigned char value = 0xFF;

 if (hw_i2c_write_data(addr, 1, &reg) == 1)
  hw_i2c_read_data(addr, 1, &value);

 return value;
}
