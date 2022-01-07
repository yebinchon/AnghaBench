
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int ni_readb (struct comedi_device*,unsigned long) ;
 int ni_writeb (struct comedi_device*,int,unsigned long) ;

__attribute__((used)) static int ni_8255_callback(struct comedi_device *dev,
       int dir, int port, int data, unsigned long iobase)
{
 if (dir) {
  ni_writeb(dev, data, iobase + 2 * port);
  return 0;
 }

 return ni_readb(dev, iobase + 2 * port);
}
