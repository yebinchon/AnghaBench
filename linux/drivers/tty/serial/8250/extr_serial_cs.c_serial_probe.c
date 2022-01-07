
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_info {struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int config_flags; struct serial_info* priv; int dev; } ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int CONF_ENABLE_SPKR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*) ;
 scalar_t__ do_sound ;
 struct serial_info* kzalloc (int,int ) ;
 int serial_config (struct pcmcia_device*) ;

__attribute__((used)) static int serial_probe(struct pcmcia_device *link)
{
 struct serial_info *info;

 dev_dbg(&link->dev, "serial_attach()\n");


 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 info->p_dev = link;
 link->priv = info;

 link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;
 if (do_sound)
  link->config_flags |= CONF_ENABLE_SPKR;

 return serial_config(link);
}
