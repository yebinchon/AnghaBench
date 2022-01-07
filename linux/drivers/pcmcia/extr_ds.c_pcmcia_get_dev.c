
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dev; } ;
struct device {int dummy; } ;


 struct device* get_device (int *) ;
 struct pcmcia_device* to_pcmcia_dev (struct device*) ;

__attribute__((used)) static struct pcmcia_device *pcmcia_get_dev(struct pcmcia_device *p_dev)
{
 struct device *tmp_dev;
 tmp_dev = get_device(&p_dev->dev);
 if (!tmp_dev)
  return ((void*)0);
 return to_pcmcia_dev(tmp_dev);
}
