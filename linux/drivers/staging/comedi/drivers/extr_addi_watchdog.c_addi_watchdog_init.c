
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; int maxdata; int insn_write; int insn_read; int insn_config; int subdev_flags; int type; } ;
struct addi_watchdog_private {unsigned long iobase; } ;


 int COMEDI_SUBD_TIMER ;
 int ENOMEM ;
 int SDF_WRITABLE ;
 int addi_watchdog_insn_config ;
 int addi_watchdog_insn_read ;
 int addi_watchdog_insn_write ;
 struct addi_watchdog_private* comedi_alloc_spriv (struct comedi_subdevice*,int) ;

int addi_watchdog_init(struct comedi_subdevice *s, unsigned long iobase)
{
 struct addi_watchdog_private *spriv;

 spriv = comedi_alloc_spriv(s, sizeof(*spriv));
 if (!spriv)
  return -ENOMEM;

 spriv->iobase = iobase;

 s->type = COMEDI_SUBD_TIMER;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = 1;
 s->maxdata = 0xff;
 s->insn_config = addi_watchdog_insn_config;
 s->insn_read = addi_watchdog_insn_read;
 s->insn_write = addi_watchdog_insn_write;

 return 0;
}
