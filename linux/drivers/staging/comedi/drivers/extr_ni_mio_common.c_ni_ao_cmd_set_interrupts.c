
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ stop_src; } ;
struct TYPE_4__ {int inttrig; TYPE_1__ cmd; } ;


 int NISTC_INTB_ENA_AO_BC_TC ;
 int NISTC_INTB_ENA_REG ;
 scalar_t__ TRIG_COUNT ;
 int ni_ao_inttrig ;
 int ni_set_bits (struct comedi_device*,int ,int ,int) ;

__attribute__((used)) static void ni_ao_cmd_set_interrupts(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 if (s->async->cmd.stop_src == TRIG_COUNT)
  ni_set_bits(dev, NISTC_INTB_ENA_REG,
       NISTC_INTB_ENA_AO_BC_TC, 1);

 s->async->inttrig = ni_ao_inttrig;
}
