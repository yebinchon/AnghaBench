
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {unsigned int an_trig_etc_reg; } ;
struct comedi_device {struct ni_private* private; } ;


 int EINVAL ;
 unsigned int NISTC_ATRIG_ETC_GPFO_0_ENA ;
 int NISTC_ATRIG_ETC_GPFO_0_SEL_TO_SRC (unsigned int) ;
 unsigned int NISTC_ATRIG_ETC_GPFO_1_ENA ;
 int NISTC_ATRIG_ETC_GPFO_1_SEL_TO_SRC (unsigned int) ;

__attribute__((used)) static inline int ni_get_gout_routing(unsigned int dest,
          struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 unsigned int reg = devpriv->an_trig_etc_reg;

 switch (dest) {
 case 0:
  if (reg & NISTC_ATRIG_ETC_GPFO_0_ENA)
   return NISTC_ATRIG_ETC_GPFO_0_SEL_TO_SRC(reg);
  break;
 case 1:
  if (reg & NISTC_ATRIG_ETC_GPFO_1_ENA)
   return NISTC_ATRIG_ETC_GPFO_1_SEL_TO_SRC(reg);
  break;
 }

 return -EINVAL;
}
