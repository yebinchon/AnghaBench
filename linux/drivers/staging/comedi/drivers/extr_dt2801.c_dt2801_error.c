
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int class_dev; } ;


 int EIO ;
 int ETIME ;
 int dev_dbg (int ,char*,...) ;
 int dt2801_reset (struct comedi_device*) ;

__attribute__((used)) static int dt2801_error(struct comedi_device *dev, int stat)
{
 if (stat < 0) {
  if (stat == -ETIME)
   dev_dbg(dev->class_dev, "timeout\n");
  else
   dev_dbg(dev->class_dev, "error %d\n", stat);
  return stat;
 }
 dev_dbg(dev->class_dev, "error status 0x%02x, resetting...\n", stat);

 dt2801_reset(dev);
 dt2801_reset(dev);

 return -EIO;
}
