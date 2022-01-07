
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {TYPE_1__* counter_dev; } ;
struct TYPE_2__ {int variant; } ;


 int EINVAL ;
 int ni_660x_gate2_to_generic_gate (unsigned int,unsigned int*) ;
 int ni_660x_gate_to_generic_gate (unsigned int,unsigned int*) ;



 int ni_m_gate2_to_generic_gate (unsigned int,unsigned int*) ;
 int ni_m_gate_to_generic_gate (unsigned int,unsigned int*) ;
 unsigned int ni_tio_get_gate2_mode (struct ni_gpct*) ;
 unsigned int ni_tio_get_gate2_val (struct ni_gpct*) ;
 unsigned int ni_tio_get_gate_mode (struct ni_gpct*) ;
 unsigned int ni_tio_get_gate_val (struct ni_gpct*) ;

__attribute__((used)) static int ni_tio_get_gate_src(struct ni_gpct *counter, unsigned int gate_index,
          unsigned int *gate_source)
{
 unsigned int gate;
 int ret;

 switch (gate_index) {
 case 0:
  gate = ni_tio_get_gate_val(counter);
  switch (counter->counter_dev->variant) {
  case 129:
  case 128:
  default:
   ret = ni_m_gate_to_generic_gate(gate, gate_source);
   break;
  case 130:
   ret = ni_660x_gate_to_generic_gate(gate, gate_source);
   break;
  }
  if (ret)
   return ret;
  *gate_source |= ni_tio_get_gate_mode(counter);
  break;
 case 1:
  gate = ni_tio_get_gate2_val(counter);
  switch (counter->counter_dev->variant) {
  case 129:
  case 128:
  default:
   ret = ni_m_gate2_to_generic_gate(gate, gate_source);
   break;
  case 130:
   ret = ni_660x_gate2_to_generic_gate(gate, gate_source);
   break;
  }
  if (ret)
   return ret;
  *gate_source |= ni_tio_get_gate2_mode(counter);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
