
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inb (int) ;
 int outb (unsigned char,int) ;

__attribute__((used)) static void set_i2c_line(int sda, int scl)
{
 unsigned char tmp;
 unsigned int port = 0x26;


 outb(port, 0x3c4);
 tmp = inb(0x3c5);

 if (scl)
  tmp |= 0x20;
 else
  tmp &= ~0x20;

 if (sda)
  tmp |= 0x10;
 else
  tmp &= ~0x10;

 tmp |= 0x01;

 outb(port, 0x3c4);
 outb(tmp, 0x3c5);
}
