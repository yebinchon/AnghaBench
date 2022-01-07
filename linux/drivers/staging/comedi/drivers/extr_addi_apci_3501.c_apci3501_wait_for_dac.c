
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ APCI3501_AO_CTRL_STATUS_REG ;
 unsigned int APCI3501_AO_STATUS_READY ;
 unsigned int inl (scalar_t__) ;

__attribute__((used)) static int apci3501_wait_for_dac(struct comedi_device *dev)
{
 unsigned int status;

 do {
  status = inl(dev->iobase + APCI3501_AO_CTRL_STATUS_REG);
 } while (!(status & APCI3501_AO_STATUS_READY));

 return 0;
}
