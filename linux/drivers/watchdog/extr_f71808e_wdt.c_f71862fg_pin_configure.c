
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int SIO_REG_MFUNCT1 ;
 int SIO_REG_MFUNCT3 ;
 int SIO_REG_ROM_ADDR_SEL ;
 int f71862fg_pin ;
 int pr_err (char*,int) ;
 int superio_clear_bit (unsigned short,int ,int) ;
 int superio_set_bit (unsigned short,int ,int) ;

__attribute__((used)) static int f71862fg_pin_configure(unsigned short ioaddr)
{



 if (f71862fg_pin == 63) {
  if (ioaddr) {

   superio_clear_bit(ioaddr, SIO_REG_ROM_ADDR_SEL, 6);
   superio_set_bit(ioaddr, SIO_REG_MFUNCT3, 4);
  }
 } else if (f71862fg_pin == 56) {
  if (ioaddr)
   superio_set_bit(ioaddr, SIO_REG_MFUNCT1, 1);
 } else {
  pr_err("Invalid argument f71862fg_pin=%d\n", f71862fg_pin);
  return -EINVAL;
 }
 return 0;
}
