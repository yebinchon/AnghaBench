
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {unsigned long iobase; unsigned long iolen; } ;


 int __comedi_request_region (struct comedi_device*,unsigned long,unsigned long) ;

int comedi_request_region(struct comedi_device *dev,
     unsigned long start, unsigned long len)
{
 int ret;

 ret = __comedi_request_region(dev, start, len);
 if (ret == 0) {
  dev->iobase = start;
  dev->iolen = len;
 }

 return ret;
}
