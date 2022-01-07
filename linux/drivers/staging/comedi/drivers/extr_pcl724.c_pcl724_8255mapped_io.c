
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned long I8255_SIZE ;
 int inb (unsigned long) ;
 int outb (int,unsigned long) ;

__attribute__((used)) static int pcl724_8255mapped_io(struct comedi_device *dev,
    int dir, int port, int data,
    unsigned long iobase)
{
 int movport = I8255_SIZE * (iobase >> 12);

 iobase &= 0x0fff;

 outb(port + movport, iobase);
 if (dir) {
  outb(data, iobase + 1);
  return 0;
 }
 return inb(iobase + 1);
}
