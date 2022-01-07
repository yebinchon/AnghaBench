
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {scalar_t__ variant; int ** regs; } ;
struct ni_gpct {unsigned int counter_index; unsigned int chip_index; struct ni_gpct_device* counter_dev; } ;


 int GI_SRC_SUBSEL ;
 unsigned int NITIO_GATE2_REG (unsigned int) ;

 unsigned int NI_GPCT_CLOCK_SRC_SELECT_MASK ;



 scalar_t__ ni_gpct_variant_m_series ;
 int ni_tio_write (struct ni_gpct*,int ,unsigned int) ;

__attribute__((used)) static void ni_tio_set_source_subselect(struct ni_gpct *counter,
     unsigned int clock_source)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 unsigned int cidx = counter->counter_index;
 unsigned int chip = counter->chip_index;
 unsigned int second_gate_reg = NITIO_GATE2_REG(cidx);

 if (counter_dev->variant != ni_gpct_variant_m_series)
  return;
 switch (clock_source & NI_GPCT_CLOCK_SRC_SELECT_MASK) {

 case 130:
 case 128:
  counter_dev->regs[chip][second_gate_reg] &= ~GI_SRC_SUBSEL;
  break;

 case 131:
 case 129:
  counter_dev->regs[chip][second_gate_reg] |= GI_SRC_SUBSEL;
  break;

 default:
  return;
 }
 ni_tio_write(counter, counter_dev->regs[chip][second_gate_reg],
       second_gate_reg);
}
