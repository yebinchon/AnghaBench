
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DT2801_DATA ;
 scalar_t__ DT2801_STATUS ;
 int DT2801_TIMEOUT ;
 int DT_S_COMPOSITE_ERROR ;
 int DT_S_DATA_IN_FULL ;
 int ETIME ;
 int inb_p (scalar_t__) ;
 int outb_p (unsigned int,scalar_t__) ;

__attribute__((used)) static int dt2801_writedata(struct comedi_device *dev, unsigned int data)
{
 int stat = 0;
 int timeout = DT2801_TIMEOUT;

 do {
  stat = inb_p(dev->iobase + DT2801_STATUS);

  if (stat & DT_S_COMPOSITE_ERROR)
   return stat;
  if (!(stat & DT_S_DATA_IN_FULL)) {
   outb_p(data & 0xff, dev->iobase + DT2801_DATA);
   return 0;
  }
 } while (--timeout > 0);

 return -ETIME;
}
