
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int dt2801_writedata (struct comedi_device*,unsigned int) ;

__attribute__((used)) static int dt2801_writedata2(struct comedi_device *dev, unsigned int data)
{
 int ret;

 ret = dt2801_writedata(dev, data & 0xff);
 if (ret < 0)
  return ret;
 ret = dt2801_writedata(dev, data >> 8);
 if (ret < 0)
  return ret;

 return 0;
}
