
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int variant; } ;
struct ni_gpct {unsigned int counter_index; struct ni_gpct_device* counter_dev; } ;


 int EINVAL ;
 unsigned int GI_660X_HW_ARM_SEL_MASK ;
 unsigned int GI_ARM ;
 unsigned int GI_ARM_COPY ;
 unsigned int GI_DISARM ;
 unsigned int GI_HW_ARM_ENA ;
 unsigned int GI_HW_ARM_SEL (unsigned int) ;
 unsigned int GI_M_HW_ARM_SEL_MASK ;
 int NITIO_CMD_REG (unsigned int) ;
 int NITIO_CNT_MODE_REG (unsigned int) ;


 unsigned int NI_GPCT_ARM_UNKNOWN ;



 int ni_tio_set_bits (struct ni_gpct*,int ,unsigned int,unsigned int) ;
 int ni_tio_set_bits_transient (struct ni_gpct*,int ,int ,int ,unsigned int) ;

int ni_tio_arm(struct ni_gpct *counter, bool arm, unsigned int start_trigger)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 unsigned int cidx = counter->counter_index;
 unsigned int transient_bits = 0;

 if (arm) {
  unsigned int mask = 0;
  unsigned int bits = 0;


  switch (counter_dev->variant) {
  case 129:
  default:
   break;
  case 128:
   mask = GI_M_HW_ARM_SEL_MASK;
   break;
  case 130:
   mask = GI_660X_HW_ARM_SEL_MASK;
   break;
  }

  switch (start_trigger) {
  case 132:
   transient_bits |= GI_ARM;
   break;
  case 131:
   transient_bits |= GI_ARM | GI_ARM_COPY;
   break;
  default:





   if (mask && (start_trigger & NI_GPCT_ARM_UNKNOWN)) {
    bits |= GI_HW_ARM_ENA |
     (GI_HW_ARM_SEL(start_trigger) & mask);
   } else {
    return -EINVAL;
   }
   break;
  }

  if (mask)
   ni_tio_set_bits(counter, NITIO_CNT_MODE_REG(cidx),
     GI_HW_ARM_ENA | mask, bits);
 } else {
  transient_bits |= GI_DISARM;
 }
 ni_tio_set_bits_transient(counter, NITIO_CMD_REG(cidx),
      0, 0, transient_bits);
 return 0;
}
