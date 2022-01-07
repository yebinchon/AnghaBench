
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sw_i2c_ack () ;
 int sw_i2c_read_sda () ;
 int sw_i2c_scl (int) ;
 int sw_i2c_sda (int) ;
 int sw_i2c_wait () ;

__attribute__((used)) static unsigned char sw_i2c_read_byte(unsigned char ack)
{
 int i;
 unsigned char data = 0;

 for (i = 7; i >= 0; i--) {

  sw_i2c_scl(0);
  sw_i2c_sda(1);
  sw_i2c_wait();


  sw_i2c_scl(1);
  sw_i2c_wait();


  data |= (sw_i2c_read_sda() << i);
 }

 if (ack)
  sw_i2c_ack();


 sw_i2c_scl(0);
 sw_i2c_sda(1);

 return data;
}
