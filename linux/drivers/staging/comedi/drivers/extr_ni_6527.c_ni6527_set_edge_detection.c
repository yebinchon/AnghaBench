
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ NI6527_FALLING_EDGE_REG (unsigned int) ;
 scalar_t__ NI6527_RISING_EDGE_REG (unsigned int) ;
 unsigned int readb (scalar_t__) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static void ni6527_set_edge_detection(struct comedi_device *dev,
          unsigned int mask,
          unsigned int rising,
          unsigned int falling)
{
 unsigned int i;

 rising &= mask;
 falling &= mask;
 for (i = 0; i < 2; i++) {
  if (mask & 0xff) {
   if (~mask & 0xff) {

    rising |= readb(dev->mmio +
      NI6527_RISING_EDGE_REG(i)) &
       (~mask & 0xff);

    falling |= readb(dev->mmio +
       NI6527_FALLING_EDGE_REG(i)) &
        (~mask & 0xff);
   }

   writeb(rising & 0xff,
          dev->mmio + NI6527_RISING_EDGE_REG(i));

   writeb(falling & 0xff,
          dev->mmio + NI6527_FALLING_EDGE_REG(i));
  }
  rising >>= 8;
  falling >>= 8;
  mask >>= 8;
 }
}
