
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {scalar_t__ variant; unsigned int** regs; } ;
struct ni_gpct {unsigned int counter_index; unsigned int chip_index; struct ni_gpct_device* counter_dev; } ;


 int EINVAL ;
 unsigned int NITIO_ABZ_REG (unsigned int) ;
 unsigned int NI_CtrA (int) ;
 unsigned int NI_CtrB (int) ;
 unsigned int NI_CtrZ (int) ;
 unsigned int NI_GPCT_SOURCE_ENCODER_A ;
 unsigned int NI_GPCT_SOURCE_ENCODER_B ;
 unsigned int NI_GPCT_SOURCE_ENCODER_Z ;
 scalar_t__ ni_gpct_variant_m_series ;
 int ni_tio_write (struct ni_gpct*,unsigned int,unsigned int) ;

__attribute__((used)) static int ni_tio_set_other_src(struct ni_gpct *counter, unsigned int index,
    unsigned int source)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 unsigned int cidx = counter->counter_index;
 unsigned int chip = counter->chip_index;
 unsigned int abz_reg, shift, mask;

 if (counter_dev->variant != ni_gpct_variant_m_series)
  return -EINVAL;

 abz_reg = NITIO_ABZ_REG(cidx);


 if (index == NI_GPCT_SOURCE_ENCODER_A ||
     (index >= NI_CtrA(0) && index <= NI_CtrA(-1))) {
  shift = 10;
 } else if (index == NI_GPCT_SOURCE_ENCODER_B ||
     (index >= NI_CtrB(0) && index <= NI_CtrB(-1))) {
  shift = 5;
 } else if (index == NI_GPCT_SOURCE_ENCODER_Z ||
     (index >= NI_CtrZ(0) && index <= NI_CtrZ(-1))) {
  shift = 0;
 } else {
  return -EINVAL;
 }

 mask = 0x1f << shift;
 if (source > 0x1f)
  source = 0x1f;

 counter_dev->regs[chip][abz_reg] &= ~mask;
 counter_dev->regs[chip][abz_reg] |= (source << shift) & mask;
 ni_tio_write(counter, counter_dev->regs[chip][abz_reg], abz_reg);
 return 0;
}
