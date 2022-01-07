
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; struct comedi_8254* private; int insn_config; int insn_write; int insn_read; int * range_table; int type; } ;
struct comedi_8254 {int dummy; } ;


 int COMEDI_SUBD_COUNTER ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int comedi_8254_insn_config ;
 int comedi_8254_insn_read ;
 int comedi_8254_insn_write ;
 int range_unknown ;

void comedi_8254_subdevice_init(struct comedi_subdevice *s,
    struct comedi_8254 *i8254)
{
 s->type = COMEDI_SUBD_COUNTER;
 s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
 s->n_chan = 3;
 s->maxdata = 0xffff;
 s->range_table = &range_unknown;
 s->insn_read = comedi_8254_insn_read;
 s->insn_write = comedi_8254_insn_write;
 s->insn_config = comedi_8254_insn_config;

 s->private = i8254;
}
