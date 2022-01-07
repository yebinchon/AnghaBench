
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int insn_read; int * range_table; int type; int insn_write; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {int * options; } ;


 int COMEDI_SUBD_COUNTER ;
 int COMEDI_SUBD_PWM ;
 int SDF_LSAMPL ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int c6xdigio_encoder_insn_read ;
 int c6xdigio_init (struct comedi_device*) ;
 int c6xdigio_pnp_driver ;
 int c6xdigio_pwm_insn_read ;
 int c6xdigio_pwm_insn_write ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int ,int) ;
 int pnp_register_driver (int *) ;
 int range_unknown ;

__attribute__((used)) static int c6xdigio_attach(struct comedi_device *dev,
      struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 int ret;

 ret = comedi_request_region(dev, it->options[0], 0x03);
 if (ret)
  return ret;

 ret = comedi_alloc_subdevices(dev, 2);
 if (ret)
  return ret;


 pnp_register_driver(&c6xdigio_pnp_driver);

 s = &dev->subdevices[0];

 s->type = COMEDI_SUBD_PWM;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = 2;
 s->maxdata = 500;
 s->range_table = &range_unknown;
 s->insn_write = c6xdigio_pwm_insn_write;
 s->insn_read = c6xdigio_pwm_insn_read;

 s = &dev->subdevices[1];

 s->type = COMEDI_SUBD_COUNTER;
 s->subdev_flags = SDF_READABLE | SDF_LSAMPL;
 s->n_chan = 2;
 s->maxdata = 0xffffff;
 s->range_table = &range_unknown;
 s->insn_read = c6xdigio_encoder_insn_read;



 c6xdigio_init(dev);

 return 0;
}
