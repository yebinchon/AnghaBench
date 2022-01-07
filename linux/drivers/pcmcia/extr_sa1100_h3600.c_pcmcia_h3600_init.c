
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENODEV ;
 int h3600_pcmcia_ops ;
 scalar_t__ machine_is_h3100 () ;
 scalar_t__ machine_is_h3600 () ;
 int sa11xx_drv_pcmcia_probe (struct device*,int *,int ,int) ;

int pcmcia_h3600_init(struct device *dev)
{
 int ret = -ENODEV;

 if (machine_is_h3600() || machine_is_h3100())
  ret = sa11xx_drv_pcmcia_probe(dev, &h3600_pcmcia_ops, 0, 2);

 return ret;
}
