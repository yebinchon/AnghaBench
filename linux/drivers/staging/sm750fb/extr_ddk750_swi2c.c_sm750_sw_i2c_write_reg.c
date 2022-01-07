
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sw_i2c_start () ;
 int sw_i2c_stop () ;
 scalar_t__ sw_i2c_write_byte (unsigned char) ;

long sm750_sw_i2c_write_reg(unsigned char addr,
       unsigned char reg,
       unsigned char data)
{
 long ret = 0;


 sw_i2c_start();




 if ((sw_i2c_write_byte(addr) != 0) ||
     (sw_i2c_write_byte(reg) != 0) ||
     (sw_i2c_write_byte(data) != 0)) {
  ret = -1;
 }


 sw_i2c_stop();

 return ret;
}
