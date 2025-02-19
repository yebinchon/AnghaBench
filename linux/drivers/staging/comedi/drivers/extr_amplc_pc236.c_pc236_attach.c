
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pc236_private {int dummy; } ;
struct comedi_device {int iobase; } ;
struct comedi_devconfig {int * options; } ;


 int ENOMEM ;
 int amplc_pc236_common_attach (struct comedi_device*,int ,int ,int ) ;
 struct pc236_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int ,int) ;

__attribute__((used)) static int pc236_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct pc236_private *devpriv;
 int ret;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 ret = comedi_request_region(dev, it->options[0], 0x4);
 if (ret)
  return ret;

 return amplc_pc236_common_attach(dev, dev->iobase, it->options[1], 0);
}
