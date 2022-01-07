
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {unsigned int counter_index; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 unsigned int COMEDI_COUNTER_ARMED ;
 unsigned int COMEDI_COUNTER_COUNTING ;
 int EINVAL ;
 unsigned int GI_ARMED (unsigned int) ;
 unsigned int GI_COUNTING (unsigned int) ;
 int NITIO_SHARED_STATUS_REG (unsigned int) ;
 int ni_tio_arm (struct ni_gpct*,int,unsigned int) ;
 int ni_tio_get_clock_src (struct ni_gpct*,unsigned int*,unsigned int*) ;
 int ni_tio_get_gate_src (struct ni_gpct*,unsigned int,unsigned int*) ;
 unsigned int ni_tio_read (struct ni_gpct*,int ) ;
 int ni_tio_reset_count_and_disarm (struct ni_gpct*) ;
 int ni_tio_set_clock_src (struct ni_gpct*,unsigned int,unsigned int) ;
 int ni_tio_set_counter_mode (struct ni_gpct*,unsigned int) ;
 int ni_tio_set_gate_src (struct ni_gpct*,unsigned int,unsigned int) ;
 int ni_tio_set_other_src (struct ni_gpct*,unsigned int,unsigned int) ;

int ni_tio_insn_config(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 struct ni_gpct *counter = s->private;
 unsigned int cidx = counter->counter_index;
 unsigned int status;
 int ret = 0;

 switch (data[0]) {
 case 130:
  ret = ni_tio_set_counter_mode(counter, data[1]);
  break;
 case 137:
  ret = ni_tio_arm(counter, 1, data[1]);
  break;
 case 136:
  ret = ni_tio_arm(counter, 0, 0);
  break;
 case 134:
  data[1] = 0;
  status = ni_tio_read(counter, NITIO_SHARED_STATUS_REG(cidx));
  if (status & GI_ARMED(cidx)) {
   data[1] |= COMEDI_COUNTER_ARMED;
   if (status & GI_COUNTING(cidx))
    data[1] |= COMEDI_COUNTER_COUNTING;
  }
  data[2] = COMEDI_COUNTER_ARMED | COMEDI_COUNTER_COUNTING;
  break;
 case 131:
  ret = ni_tio_set_clock_src(counter, data[1], data[2]);
  break;
 case 135:
  ret = ni_tio_get_clock_src(counter, &data[1], &data[2]);
  break;
 case 129:
  ret = ni_tio_set_gate_src(counter, data[1], data[2]);
  break;
 case 133:
  ret = ni_tio_get_gate_src(counter, data[1], &data[2]);
  break;
 case 128:
  ret = ni_tio_set_other_src(counter, data[1], data[2]);
  break;
 case 132:
  ni_tio_reset_count_and_disarm(counter);
  break;
 default:
  return -EINVAL;
 }
 return ret ? ret : insn->n;
}
