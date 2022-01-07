
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int irq; int dev; TYPE_1__* priv; } ;
struct TYPE_2__ {int host; } ;
typedef TYPE_1__ scsi_info_t ;


 int dev_dbg (int *,char*) ;
 int free_irq (int ,int ) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;

__attribute__((used)) static void qlogic_release(struct pcmcia_device *link)
{
 scsi_info_t *info = link->priv;

 dev_dbg(&link->dev, "qlogic_release\n");

 scsi_remove_host(info->host);

 free_irq(link->irq, info->host);
 pcmcia_disable_device(link);

 scsi_host_put(info->host);
}
