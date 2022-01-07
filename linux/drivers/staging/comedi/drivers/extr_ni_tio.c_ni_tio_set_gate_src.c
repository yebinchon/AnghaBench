
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int variant; } ;
struct ni_gpct {struct ni_gpct_device* counter_dev; } ;


 unsigned int CR_CHAN (unsigned int) ;
 int EINVAL ;
 unsigned int NI_GPCT_DISABLED_GATE_SELECT ;
 int ni_660x_set_gate (struct ni_gpct*,int) ;
 int ni_660x_set_gate2 (struct ni_gpct*,int) ;



 int ni_m_set_gate (struct ni_gpct*,int) ;
 int ni_m_set_gate2 (struct ni_gpct*,int) ;
 int ni_tio_has_gate2_registers (struct ni_gpct_device*) ;
 int ni_tio_set_gate2_mode (struct ni_gpct*,unsigned int) ;
 int ni_tio_set_gate_mode (struct ni_gpct*,unsigned int) ;

int ni_tio_set_gate_src(struct ni_gpct *counter,
   unsigned int gate, unsigned int src)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;





 int chan = CR_CHAN(src) & (~NI_GPCT_DISABLED_GATE_SELECT);
 int ret;

 switch (gate) {
 case 0:

  ni_tio_set_gate_mode(counter, NI_GPCT_DISABLED_GATE_SELECT);

  switch (counter_dev->variant) {
  case 129:
  case 128:
   ret = ni_m_set_gate(counter, chan);
   break;
  case 130:
   ret = ni_660x_set_gate(counter, chan);
   break;
  default:
   return -EINVAL;
  }
  if (ret)
   return ret;

  ni_tio_set_gate_mode(counter, src);
  break;
 case 1:
  if (!ni_tio_has_gate2_registers(counter_dev))
   return -EINVAL;


  ni_tio_set_gate2_mode(counter, NI_GPCT_DISABLED_GATE_SELECT);

  switch (counter_dev->variant) {
  case 128:
   ret = ni_m_set_gate2(counter, chan);
   break;
  case 130:
   ret = ni_660x_set_gate2(counter, chan);
   break;
  default:
   return -EINVAL;
  }
  if (ret)
   return ret;

  ni_tio_set_gate2_mode(counter, src);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
