
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int class_dev; } ;


 int EIO ;
 int ETIME ;
 int HZ ;
 unsigned short NI67XX_CAL_STATUS_BUSY ;
 int NI67XX_CAL_STATUS_REG ;
 int TASK_INTERRUPTIBLE ;
 int dev_err (int ,char*) ;
 unsigned short ni_ao_win_inw (struct comedi_device*,int ) ;
 scalar_t__ schedule_timeout (int) ;
 int set_current_state (int ) ;

__attribute__((used)) static int cs5529_wait_for_idle(struct comedi_device *dev)
{
 unsigned short status;
 const int timeout = HZ;
 int i;

 for (i = 0; i < timeout; i++) {
  status = ni_ao_win_inw(dev, NI67XX_CAL_STATUS_REG);
  if ((status & NI67XX_CAL_STATUS_BUSY) == 0)
   break;
  set_current_state(TASK_INTERRUPTIBLE);
  if (schedule_timeout(1))
   return -EIO;
 }
 if (i == timeout) {
  dev_err(dev->class_dev, "timeout\n");
  return -ETIME;
 }
 return 0;
}
