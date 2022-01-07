
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENODEV ;
 scalar_t__ machine_is_simpad () ;
 int sa11xx_drv_pcmcia_probe (struct device*,int *,int,int) ;
 int simpad_pcmcia_ops ;

int pcmcia_simpad_init(struct device *dev)
{
 int ret = -ENODEV;

 if (machine_is_simpad())
  ret = sa11xx_drv_pcmcia_probe(dev, &simpad_pcmcia_ops, 1, 1);

 return ret;
}
