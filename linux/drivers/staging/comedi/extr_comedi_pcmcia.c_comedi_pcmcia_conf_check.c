
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ config_index; } ;


 int EINVAL ;
 int pcmcia_request_io (struct pcmcia_device*) ;

__attribute__((used)) static int comedi_pcmcia_conf_check(struct pcmcia_device *link,
        void *priv_data)
{
 if (link->config_index == 0)
  return -EINVAL;

 return pcmcia_request_io(link);
}
