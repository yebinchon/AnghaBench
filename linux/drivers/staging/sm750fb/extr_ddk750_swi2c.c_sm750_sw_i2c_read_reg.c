
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char sw_i2c_read_byte (int) ;
 int sw_i2c_start () ;
 int sw_i2c_stop () ;
 int sw_i2c_write_byte (unsigned char) ;

unsigned char sm750_sw_i2c_read_reg(unsigned char addr, unsigned char reg)
{
 unsigned char data;


 sw_i2c_start();


 sw_i2c_write_byte(addr);


 sw_i2c_write_byte(reg);


 sw_i2c_start();
 sw_i2c_write_byte(addr + 1);
 data = sw_i2c_read_byte(1);


 sw_i2c_stop();

 return data;
}
