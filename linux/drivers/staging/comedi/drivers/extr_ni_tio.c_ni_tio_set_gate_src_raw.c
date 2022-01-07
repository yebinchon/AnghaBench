
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int dummy; } ;
struct ni_gpct {struct ni_gpct_device* counter_dev; } ;


 int EINVAL ;
 unsigned int NI_GPCT_DISABLED_GATE_SELECT ;
 int ni_tio_has_gate2_registers (struct ni_gpct_device*) ;
 int ni_tio_set_gate2_mode (struct ni_gpct*,unsigned int) ;
 int ni_tio_set_gate2_raw (struct ni_gpct*,unsigned int) ;
 int ni_tio_set_gate_mode (struct ni_gpct*,unsigned int) ;
 int ni_tio_set_gate_raw (struct ni_gpct*,unsigned int) ;

int ni_tio_set_gate_src_raw(struct ni_gpct *counter,
       unsigned int gate, unsigned int src)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;

 switch (gate) {
 case 0:

  ni_tio_set_gate_mode(counter, NI_GPCT_DISABLED_GATE_SELECT);

  ni_tio_set_gate_raw(counter, src);

  ni_tio_set_gate_mode(counter, src);
  break;
 case 1:
  if (!ni_tio_has_gate2_registers(counter_dev))
   return -EINVAL;


  ni_tio_set_gate2_mode(counter, NI_GPCT_DISABLED_GATE_SELECT);

  ni_tio_set_gate2_raw(counter, src);

  ni_tio_set_gate2_mode(counter, src);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
