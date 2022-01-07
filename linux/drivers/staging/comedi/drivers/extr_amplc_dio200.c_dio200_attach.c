
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;
struct comedi_devconfig {int * options; } ;


 int amplc_dio200_common_attach (struct comedi_device*,int ,int ) ;
 int comedi_request_region (struct comedi_device*,int ,int) ;

__attribute__((used)) static int dio200_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 int ret;

 ret = comedi_request_region(dev, it->options[0], 0x20);
 if (ret)
  return ret;

 return amplc_dio200_common_attach(dev, it->options[1], 0);
}
