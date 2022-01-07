
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int dt2801_readdata (struct comedi_device*,int*) ;

__attribute__((used)) static int dt2801_readdata2(struct comedi_device *dev, int *data)
{
 int lb = 0;
 int hb = 0;
 int ret;

 ret = dt2801_readdata(dev, &lb);
 if (ret)
  return ret;
 ret = dt2801_readdata(dev, &hb);
 if (ret)
  return ret;

 *data = (hb << 8) + lb;
 return 0;
}
