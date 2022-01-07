
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int variant; struct comedi_device* dev; } ;
struct ni_gpct {unsigned int counter_index; unsigned int clock_period_ps; struct ni_gpct_device* counter_dev; } ;
struct comedi_device {int class_dev; } ;


 int EINVAL ;
 unsigned int GI_PRESCALE_X2 (int) ;
 unsigned int GI_PRESCALE_X8 (int) ;
 unsigned int GI_SRC_POL_INVERT ;
 unsigned int GI_SRC_SEL_MASK ;
 int NITIO_CNT_MODE_REG (unsigned int) ;
 int NITIO_INPUT_SEL_REG (unsigned int) ;
 unsigned int NI_GPCT_INVERT_CLOCK_SRC_BIT ;

 unsigned int NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK ;


 int dev_err (int ,char*,unsigned int) ;
 int ni_660x_clk_src (unsigned int,unsigned int*) ;



 int ni_m_clk_src (unsigned int,unsigned int*) ;
 scalar_t__ ni_tio_counting_mode_registers_present (struct ni_gpct_device*) ;
 int ni_tio_set_bits (struct ni_gpct*,int ,unsigned int,unsigned int) ;
 int ni_tio_set_source_subselect (struct ni_gpct*,unsigned int) ;
 int ni_tio_set_sync_mode (struct ni_gpct*) ;

__attribute__((used)) static int ni_tio_set_clock_src(struct ni_gpct *counter,
    unsigned int clock_source,
    unsigned int period_ns)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 unsigned int cidx = counter->counter_index;
 unsigned int bits = 0;
 int ret;

 switch (counter_dev->variant) {
 case 130:
  ret = ni_660x_clk_src(clock_source, &bits);
  break;
 case 129:
 case 128:
 default:
  ret = ni_m_clk_src(clock_source, &bits);
  break;
 }
 if (ret) {
  struct comedi_device *dev = counter_dev->dev;

  dev_err(dev->class_dev, "invalid clock source 0x%x\n",
   clock_source);
  return ret;
 }

 if (clock_source & NI_GPCT_INVERT_CLOCK_SRC_BIT)
  bits |= GI_SRC_POL_INVERT;
 ni_tio_set_bits(counter, NITIO_INPUT_SEL_REG(cidx),
   GI_SRC_SEL_MASK | GI_SRC_POL_INVERT, bits);
 ni_tio_set_source_subselect(counter, clock_source);

 if (ni_tio_counting_mode_registers_present(counter_dev)) {
  bits = 0;
  switch (clock_source & NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK) {
  case 133:
   break;
  case 132:
   bits |= GI_PRESCALE_X2(counter_dev->variant);
   break;
  case 131:
   bits |= GI_PRESCALE_X8(counter_dev->variant);
   break;
  default:
   return -EINVAL;
  }
  ni_tio_set_bits(counter, NITIO_CNT_MODE_REG(cidx),
    GI_PRESCALE_X2(counter_dev->variant) |
    GI_PRESCALE_X8(counter_dev->variant), bits);
 }
 counter->clock_period_ps = period_ns * 1000;
 ni_tio_set_sync_mode(counter);
 return 0;
}
