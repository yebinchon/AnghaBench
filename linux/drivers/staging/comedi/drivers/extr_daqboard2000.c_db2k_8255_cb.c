
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 int readw (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int db2k_8255_cb(struct comedi_device *dev, int dir, int port, int data,
   unsigned long iobase)
{
 if (dir) {
  writew(data, dev->mmio + iobase + port * 2);
  return 0;
 }
 return readw(dev->mmio + iobase + port * 2);
}
