
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv_pcm3724 {int dummy; } ;
struct comedi_subdevice {int insn_config; } ;
struct comedi_device {int n_subdevices; struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {int * options; } ;


 int ENOMEM ;
 int I8255_SIZE ;
 struct priv_pcm3724* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int ,int) ;
 int subdev_3724_insn_config ;
 int subdev_8255_init (struct comedi_device*,struct comedi_subdevice*,int *,int) ;

__attribute__((used)) static int pcm3724_attach(struct comedi_device *dev,
     struct comedi_devconfig *it)
{
 struct priv_pcm3724 *priv;
 struct comedi_subdevice *s;
 int ret, i;

 priv = comedi_alloc_devpriv(dev, sizeof(*priv));
 if (!priv)
  return -ENOMEM;

 ret = comedi_request_region(dev, it->options[0], 0x10);
 if (ret)
  return ret;

 ret = comedi_alloc_subdevices(dev, 2);
 if (ret)
  return ret;

 for (i = 0; i < dev->n_subdevices; i++) {
  s = &dev->subdevices[i];
  ret = subdev_8255_init(dev, s, ((void*)0), i * I8255_SIZE);
  if (ret)
   return ret;
  s->insn_config = subdev_3724_insn_config;
 }
 return 0;
}
