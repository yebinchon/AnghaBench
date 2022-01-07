
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ni_route_tables {int dummy; } ;
struct ni_gpct {unsigned int counter_index; TYPE_2__* counter_dev; } ;
struct comedi_subdevice {struct ni_gpct* private; TYPE_1__* async; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; unsigned int scan_begin_arg; scalar_t__ convert_src; unsigned int convert_arg; int flags; } ;
struct TYPE_4__ {struct ni_route_tables* routing_tables; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;


 int CMDF_WAKE_EOS ;
 scalar_t__ CR_CHAN (unsigned int) ;
 int EINVAL ;
 int GI_GATE_INTERRUPT_ENABLE (unsigned int) ;
 int NITIO_INT_ENA_REG (unsigned int) ;
 int NI_CtrGate (unsigned int) ;
 scalar_t__ NI_NAMES_BASE ;
 scalar_t__ TRIG_EXT ;
 int ni_get_reg_value (scalar_t__,int ,struct ni_route_tables const*) ;
 int ni_tio_set_bits (struct ni_gpct*,int ,int ,int ) ;
 int ni_tio_set_gate_src (struct ni_gpct*,int ,unsigned int) ;
 int ni_tio_set_gate_src_raw (struct ni_gpct*,int ,int) ;

__attribute__((used)) static int ni_tio_cmd_setup(struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 struct ni_gpct *counter = s->private;
 unsigned int cidx = counter->counter_index;
 const struct ni_route_tables *routing_tables =
  counter->counter_dev->routing_tables;
 int set_gate_source = 0;
 unsigned int gate_source;
 int retval = 0;

 if (cmd->scan_begin_src == TRIG_EXT) {
  set_gate_source = 1;
  gate_source = cmd->scan_begin_arg;
 } else if (cmd->convert_src == TRIG_EXT) {
  set_gate_source = 1;
  gate_source = cmd->convert_arg;
 }
 if (set_gate_source) {
  if (CR_CHAN(gate_source) >= NI_NAMES_BASE) {

   int reg = ni_get_reg_value(CR_CHAN(gate_source),
         NI_CtrGate(cidx),
         routing_tables);
   if (reg < 0)
    return -EINVAL;
   retval = ni_tio_set_gate_src_raw(counter, 0, reg);
  } else {





   retval = ni_tio_set_gate_src(counter, 0, gate_source);
  }
 }
 if (cmd->flags & CMDF_WAKE_EOS) {
  ni_tio_set_bits(counter, NITIO_INT_ENA_REG(cidx),
    GI_GATE_INTERRUPT_ENABLE(cidx),
    GI_GATE_INTERRUPT_ENABLE(cidx));
 }
 return retval;
}
