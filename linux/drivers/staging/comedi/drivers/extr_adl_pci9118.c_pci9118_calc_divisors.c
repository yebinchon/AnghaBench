
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct comedi_8254* pacer; } ;
struct comedi_cmd {scalar_t__ convert_src; } ;
struct comedi_8254 {unsigned int osc_base; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 scalar_t__ TRIG_NOW ;

__attribute__((used)) static void pci9118_calc_divisors(struct comedi_device *dev,
      struct comedi_subdevice *s,
      unsigned int *tim1, unsigned int *tim2,
      unsigned int flags, int chans,
      unsigned int *div1, unsigned int *div2,
      unsigned int chnsshfront)
{
 struct comedi_8254 *pacer = dev->pacer;
 struct comedi_cmd *cmd = &s->async->cmd;

 *div1 = *tim2 / pacer->osc_base;
 *div2 = *tim1 / pacer->osc_base;
 *div2 = *div2 / *div1;
 if (*div2 < chans)
  *div2 = chans;

 *tim2 = *div1 * pacer->osc_base;

 if (cmd->convert_src == TRIG_NOW && !chnsshfront) {

  if (*div2 < (chans + 2))
   *div2 = chans + 2;
 }

 *tim1 = *div1 * *div2 * pacer->osc_base;
}
