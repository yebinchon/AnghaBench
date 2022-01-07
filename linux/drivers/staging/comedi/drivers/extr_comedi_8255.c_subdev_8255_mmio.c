
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int subdev_8255_mmio(struct comedi_device *dev,
       int dir, int port, int data, unsigned long regbase)
{
 if (dir) {
  writeb(data, dev->mmio + regbase + port);
  return 0;
 }
 return readb(dev->mmio + regbase + port);
}
