
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int class_dev; scalar_t__ iobase; } ;


 scalar_t__ DT2801_CMD ;
 scalar_t__ DT2801_DATA ;
 scalar_t__ DT2801_STATUS ;
 int DT_C_RESET ;
 int DT_C_STOP ;
 unsigned int DT_S_READY ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dt2801_readdata (struct comedi_device*,int*) ;
 unsigned int inb_p (scalar_t__) ;
 int outb_p (int ,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dt2801_reset(struct comedi_device *dev)
{
 int board_code = 0;
 unsigned int stat;
 int timeout;


 inb_p(dev->iobase + DT2801_DATA);
 inb_p(dev->iobase + DT2801_DATA);
 inb_p(dev->iobase + DT2801_DATA);
 inb_p(dev->iobase + DT2801_DATA);


 outb_p(DT_C_STOP, dev->iobase + DT2801_CMD);


 usleep_range(100, 200);
 timeout = 10000;
 do {
  stat = inb_p(dev->iobase + DT2801_STATUS);
  if (stat & DT_S_READY)
   break;
 } while (timeout--);
 if (!timeout)
  dev_dbg(dev->class_dev, "timeout 1 status=0x%02x\n", stat);



 outb_p(DT_C_RESET, dev->iobase + DT2801_CMD);


 usleep_range(100, 200);
 timeout = 10000;
 do {
  stat = inb_p(dev->iobase + DT2801_STATUS);
  if (stat & DT_S_READY)
   break;
 } while (timeout--);
 if (!timeout)
  dev_dbg(dev->class_dev, "timeout 2 status=0x%02x\n", stat);

 dt2801_readdata(dev, &board_code);

 return board_code;
}
