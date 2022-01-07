
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {scalar_t__ rgout0_usage; int routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;
typedef scalar_t__ s8 ;


 int CR_CHAN (int) ;
 int EBUSY ;
 int EINVAL ;
 int NI_RGOUT0 ;
 scalar_t__ get_rgout0_reg (struct comedi_device*) ;
 scalar_t__ ni_lookup_route_register (int ,int ,int *) ;
 int set_rgout0_reg (scalar_t__,struct comedi_device*) ;

__attribute__((used)) static int incr_rgout0_src_use(int src, struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 s8 reg = ni_lookup_route_register(CR_CHAN(src), NI_RGOUT0,
       &devpriv->routing_tables);

 if (reg < 0)
  return -EINVAL;

 if (devpriv->rgout0_usage > 0 && get_rgout0_reg(dev) != reg)
  return -EBUSY;

 ++devpriv->rgout0_usage;
 set_rgout0_reg(reg, dev);
 return 0;
}
