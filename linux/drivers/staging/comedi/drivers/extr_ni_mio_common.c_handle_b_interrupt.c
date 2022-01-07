
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {int class_dev; } ;
struct TYPE_3__ {scalar_t__ stop_src; } ;
struct TYPE_4__ {int events; TYPE_1__ cmd; } ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_OVERFLOW ;
 unsigned short NISTC_AO_STATUS1_BC_TC ;
 unsigned short NISTC_AO_STATUS1_FIFO_REQ ;
 unsigned short NISTC_AO_STATUS1_OVERRUN ;
 int NISTC_AO_STATUS2_REG ;
 int NISTC_INTB_ENA_AO_ERR ;
 int NISTC_INTB_ENA_AO_FIFO ;
 int NISTC_INTB_ENA_REG ;
 scalar_t__ TRIG_NONE ;
 int dev_err (int ,char*,...) ;
 int ni_ao_fifo_half_empty (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_set_bits (struct comedi_device*,int ,int,int ) ;
 int ni_stc_readw (struct comedi_device*,int ) ;

__attribute__((used)) static void handle_b_interrupt(struct comedi_device *dev,
          struct comedi_subdevice *s,
          unsigned short b_status)
{
 if (b_status == 0xffff)
  return;
 if (b_status & NISTC_AO_STATUS1_OVERRUN) {
  dev_err(dev->class_dev,
   "AO FIFO underrun status=0x%04x status2=0x%04x\n",
   b_status, ni_stc_readw(dev, NISTC_AO_STATUS2_REG));
  s->async->events |= COMEDI_CB_OVERFLOW;
 }

 if (s->async->cmd.stop_src != TRIG_NONE &&
     b_status & NISTC_AO_STATUS1_BC_TC)
  s->async->events |= COMEDI_CB_EOA;


 if (b_status & NISTC_AO_STATUS1_FIFO_REQ) {
  int ret;

  ret = ni_ao_fifo_half_empty(dev, s);
  if (!ret) {
   dev_err(dev->class_dev, "AO buffer underrun\n");
   ni_set_bits(dev, NISTC_INTB_ENA_REG,
        NISTC_INTB_ENA_AO_FIFO |
        NISTC_INTB_ENA_AO_ERR, 0);
   s->async->events |= COMEDI_CB_OVERFLOW;
  }
 }

}
