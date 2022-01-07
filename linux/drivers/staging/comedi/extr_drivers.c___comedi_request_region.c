
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int board_name; int class_dev; } ;


 int EINVAL ;
 int EIO ;
 int dev_warn (int ,char*,int ,...) ;
 int request_region (unsigned long,unsigned long,int ) ;

int __comedi_request_region(struct comedi_device *dev,
       unsigned long start, unsigned long len)
{
 if (!start) {
  dev_warn(dev->class_dev,
    "%s: a I/O base address must be specified\n",
    dev->board_name);
  return -EINVAL;
 }

 if (!request_region(start, len, dev->board_name)) {
  dev_warn(dev->class_dev, "%s: I/O port conflict (%#lx,%lu)\n",
    dev->board_name, start, len);
  return -EIO;
 }

 return 0;
}
