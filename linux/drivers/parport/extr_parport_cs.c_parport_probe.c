
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int config_flags; TYPE_1__* priv; int dev; } ;
struct TYPE_3__ {struct pcmcia_device* p_dev; } ;
typedef TYPE_1__ parport_info_t ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int parport_config (struct pcmcia_device*) ;

__attribute__((used)) static int parport_probe(struct pcmcia_device *link)
{
    parport_info_t *info;

    dev_dbg(&link->dev, "parport_attach()\n");


    info = kzalloc(sizeof(*info), GFP_KERNEL);
    if (!info) return -ENOMEM;
    link->priv = info;
    info->p_dev = link;

    link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

    return parport_config(link);
}
