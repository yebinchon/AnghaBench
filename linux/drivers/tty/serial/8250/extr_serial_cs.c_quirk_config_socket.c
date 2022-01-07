
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_info {scalar_t__ multi; } ;
struct pcmcia_device {int config_flags; struct serial_info* priv; } ;


 int CONF_ENABLE_ESR ;

__attribute__((used)) static void quirk_config_socket(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;

 if (info->multi)
  link->config_flags |= CONF_ENABLE_ESR;
}
