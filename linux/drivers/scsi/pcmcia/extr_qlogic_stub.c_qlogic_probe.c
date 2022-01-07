
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int config_flags; int config_regs; TYPE_1__* priv; int dev; } ;
struct TYPE_3__ {struct pcmcia_device* p_dev; } ;
typedef TYPE_1__ scsi_info_t ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PRESENT_OPTION ;
 int dev_dbg (int *,char*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int qlogic_config (struct pcmcia_device*) ;

__attribute__((used)) static int qlogic_probe(struct pcmcia_device *link)
{
 scsi_info_t *info;

 dev_dbg(&link->dev, "qlogic_attach()\n");


 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 info->p_dev = link;
 link->priv = info;
 link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;
 link->config_regs = PRESENT_OPTION;

 return qlogic_config(link);
}
