
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_low_level {int dummy; } ;
struct device {scalar_t__ platform_data; } ;


 int pxa2xx_configure_sockets (struct device*,struct pcmcia_low_level*) ;

__attribute__((used)) static int pxa2xx_drv_pcmcia_resume(struct device *dev)
{
 struct pcmcia_low_level *ops = (struct pcmcia_low_level *)dev->platform_data;

 pxa2xx_configure_sockets(dev, ops);
 return 0;
}
