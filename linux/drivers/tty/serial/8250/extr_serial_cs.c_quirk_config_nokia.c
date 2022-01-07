
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_info {int multi; } ;
struct pcmcia_device {struct serial_info* priv; } ;



__attribute__((used)) static void quirk_config_nokia(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;

 if (info->multi > 1)
  info->multi = 1;
}
