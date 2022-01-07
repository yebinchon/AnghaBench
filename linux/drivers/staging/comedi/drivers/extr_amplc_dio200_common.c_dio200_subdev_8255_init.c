
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_8255 {unsigned int ofs; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int insn_config; int insn_bits; int * range_table; int type; } ;
struct comedi_device {int dummy; } ;


 int COMEDI_SUBD_DIO ;
 int ENOMEM ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 struct dio200_subdev_8255* comedi_alloc_spriv (struct comedi_subdevice*,int) ;
 int dio200_subdev_8255_bits ;
 int dio200_subdev_8255_config ;
 int dio200_subdev_8255_set_dir (struct comedi_device*,struct comedi_subdevice*) ;
 int range_digital ;

__attribute__((used)) static int dio200_subdev_8255_init(struct comedi_device *dev,
       struct comedi_subdevice *s,
       unsigned int offset)
{
 struct dio200_subdev_8255 *subpriv;

 subpriv = comedi_alloc_spriv(s, sizeof(*subpriv));
 if (!subpriv)
  return -ENOMEM;

 subpriv->ofs = offset;

 s->type = COMEDI_SUBD_DIO;
 s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
 s->n_chan = 24;
 s->range_table = &range_digital;
 s->maxdata = 1;
 s->insn_bits = dio200_subdev_8255_bits;
 s->insn_config = dio200_subdev_8255_config;
 dio200_subdev_8255_set_dir(dev, s);
 return 0;
}
