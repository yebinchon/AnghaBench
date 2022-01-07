
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;


 int NI_RGOUT0 ;
 int get_rgout0_reg (struct comedi_device*) ;
 int ni_find_route_source (int,int ,int *) ;

__attribute__((used)) static inline int get_rgout0_src(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 int reg = get_rgout0_reg(dev);

 return ni_find_route_source(reg, NI_RGOUT0, &devpriv->routing_tables);
}
