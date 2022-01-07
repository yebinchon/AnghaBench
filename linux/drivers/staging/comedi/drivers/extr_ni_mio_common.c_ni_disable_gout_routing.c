
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int an_trig_etc_reg; } ;
struct comedi_device {struct ni_private* private; } ;


 int EINVAL ;
 int NISTC_ATRIG_ETC_GPFO_0_ENA ;
 int NISTC_ATRIG_ETC_GPFO_1_ENA ;
 int NISTC_ATRIG_ETC_REG ;
 int ni_stc_writew (struct comedi_device*,int ,int ) ;

__attribute__((used)) static inline int ni_disable_gout_routing(unsigned int dest,
       struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;

 switch (dest) {
 case 0:
  devpriv->an_trig_etc_reg &= ~NISTC_ATRIG_ETC_GPFO_0_ENA;
  break;
 case 1:
  devpriv->an_trig_etc_reg &= ~NISTC_ATRIG_ETC_GPFO_1_ENA;
  break;
 default:
  return -EINVAL;
 }

 ni_stc_writew(dev, devpriv->an_trig_etc_reg, NISTC_ATRIG_ETC_REG);
 return 0;
}
