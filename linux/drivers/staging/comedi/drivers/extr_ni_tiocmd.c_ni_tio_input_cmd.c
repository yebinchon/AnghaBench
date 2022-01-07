
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ni_route_tables {int dummy; } ;
struct ni_gpct_device {int variant; struct ni_route_tables* routing_tables; } ;
struct ni_gpct {unsigned int counter_index; TYPE_1__* mite_chan; struct ni_gpct_device* counter_dev; } ;
struct comedi_subdevice {struct comedi_async* async; struct ni_gpct* private; } ;
struct comedi_cmd {scalar_t__ start_src; int start_arg; } ;
struct comedi_async {int * inttrig; int prealloc_bufsz; struct comedi_cmd cmd; } ;
struct TYPE_3__ {int dir; } ;


 int COMEDI_INPUT ;
 int CR_CHAN (int ) ;
 int GI_SAVE_TRACE ;
 int NITIO_CMD_REG (unsigned int) ;
 int NI_CtrArmStartTrigger (unsigned int) ;
 int NI_GPCT_ARM_IMMEDIATE ;
 int NI_GPCT_HW_ARM ;
 int NI_NAMES_BASE ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_INT ;
 scalar_t__ TRIG_NOW ;
 int comedi_buf_write_alloc (struct comedi_subdevice*,int ) ;
 int mite_dma_arm (TYPE_1__*) ;
 int mite_prep_dma (TYPE_1__*,int,int) ;
 int ni_get_reg_value (int,int ,struct ni_route_tables const*) ;



 int ni_tio_arm (struct ni_gpct*,int,int) ;
 int ni_tio_configure_dma (struct ni_gpct*,int,int) ;
 int ni_tio_input_inttrig ;
 int ni_tio_set_bits (struct ni_gpct*,int ,int ,int ) ;

__attribute__((used)) static int ni_tio_input_cmd(struct comedi_subdevice *s)
{
 struct ni_gpct *counter = s->private;
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 const struct ni_route_tables *routing_tables =
  counter_dev->routing_tables;
 unsigned int cidx = counter->counter_index;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 int ret = 0;


 comedi_buf_write_alloc(s, async->prealloc_bufsz);
 counter->mite_chan->dir = COMEDI_INPUT;
 switch (counter_dev->variant) {
 case 128:
 case 130:
  mite_prep_dma(counter->mite_chan, 32, 32);
  break;
 case 129:
  mite_prep_dma(counter->mite_chan, 16, 32);
  break;
 }
 ni_tio_set_bits(counter, NITIO_CMD_REG(cidx), GI_SAVE_TRACE, 0);
 ni_tio_configure_dma(counter, 1, 1);

 if (cmd->start_src == TRIG_INT) {
  async->inttrig = &ni_tio_input_inttrig;
 } else {
  async->inttrig = ((void*)0);
  mite_dma_arm(counter->mite_chan);

  if (cmd->start_src == TRIG_NOW)
   ret = ni_tio_arm(counter, 1, NI_GPCT_ARM_IMMEDIATE);
  else if (cmd->start_src == TRIG_EXT) {
   int reg = CR_CHAN(cmd->start_arg);

   if (reg >= NI_NAMES_BASE) {

    reg = ni_get_reg_value(reg,
             NI_CtrArmStartTrigger(cidx),
             routing_tables);

    reg |= NI_GPCT_HW_ARM;
   }
   ret = ni_tio_arm(counter, 1, reg);
  }
 }
 return ret;
}
