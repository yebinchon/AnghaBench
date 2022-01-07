
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ config_index; } ;


 int EINVAL ;
 int pcmcia_request_io (struct pcmcia_device*) ;

__attribute__((used)) static int sl811_cs_config_check(struct pcmcia_device *p_dev, void *priv_data)
{
 if (p_dev->config_index == 0)
  return -EINVAL;

 return pcmcia_request_io(p_dev);
}
