
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sw_i2c_read_sda () ;
 int sw_i2c_scl (int) ;
 int sw_i2c_sda (int) ;
 int sw_i2c_wait () ;

__attribute__((used)) static long sw_i2c_write_byte(unsigned char data)
{
 unsigned char value = data;
 int i;


 for (i = 0; i < 8; i++) {

  sw_i2c_scl(0);


  if ((value & 0x80) != 0)
   sw_i2c_sda(1);
  else
   sw_i2c_sda(0);

  sw_i2c_wait();


  sw_i2c_scl(1);
  sw_i2c_wait();


  value = value << 1;
 }


 sw_i2c_scl(0);
 sw_i2c_sda(1);


 sw_i2c_wait();
 sw_i2c_scl(1);
 sw_i2c_wait();


 for (i = 0; i < 0xff; i++) {
  if (!sw_i2c_read_sda())
   break;

  sw_i2c_scl(0);
  sw_i2c_wait();
  sw_i2c_scl(1);
  sw_i2c_wait();
 }


 sw_i2c_scl(0);
 sw_i2c_sda(1);

 if (i < 0xff)
  return 0;
 else
  return -1;
}
