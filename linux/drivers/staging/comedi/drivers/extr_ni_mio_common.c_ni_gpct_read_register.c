
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {TYPE_1__* counter_dev; } ;
struct comedi_device {int dummy; } ;
typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;
struct TYPE_2__ {struct comedi_device* dev; } ;
 unsigned int ni_gpct_to_stc_register (struct comedi_device*,int) ;
 unsigned int ni_readw (struct comedi_device*,unsigned int) ;
 unsigned int ni_stc_readl (struct comedi_device*,unsigned int) ;
 unsigned int ni_stc_readw (struct comedi_device*,unsigned int) ;

__attribute__((used)) static unsigned int ni_gpct_read_register(struct ni_gpct *counter,
       enum ni_gpct_register reg)
{
 struct comedi_device *dev = counter->counter_dev->dev;
 unsigned int stc_register = ni_gpct_to_stc_register(dev, reg);

 if (stc_register == 0)
  return 0;

 switch (reg) {

 case 133:
 case 130:
  return ni_readw(dev, stc_register);


 case 132:
 case 129:
 case 131:
 case 128:
  return ni_stc_readl(dev, stc_register);


 default:
  return ni_stc_readw(dev, stc_register);
 }
}
