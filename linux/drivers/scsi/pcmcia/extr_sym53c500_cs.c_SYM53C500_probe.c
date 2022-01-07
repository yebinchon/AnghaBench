
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_info_t {struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int config_flags; struct scsi_info_t* priv; int dev; } ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SYM53C500_config (struct pcmcia_device*) ;
 int dev_dbg (int *,char*) ;
 struct scsi_info_t* kzalloc (int,int ) ;

__attribute__((used)) static int
SYM53C500_probe(struct pcmcia_device *link)
{
 struct scsi_info_t *info;

 dev_dbg(&link->dev, "SYM53C500_attach()\n");


 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 info->p_dev = link;
 link->priv = info;
 link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

 return SYM53C500_config(link);
}
