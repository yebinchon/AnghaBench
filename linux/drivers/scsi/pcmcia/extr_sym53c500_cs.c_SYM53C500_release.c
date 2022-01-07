
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_info_t {struct Scsi_Host* host; } ;
struct pcmcia_device {int dev; struct scsi_info_t* priv; } ;
struct Scsi_Host {scalar_t__ n_io_port; scalar_t__ io_port; scalar_t__ irq; } ;


 int dev_dbg (int *,char*) ;
 int free_irq (scalar_t__,struct Scsi_Host*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int release_region (scalar_t__,scalar_t__) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static void
SYM53C500_release(struct pcmcia_device *link)
{
 struct scsi_info_t *info = link->priv;
 struct Scsi_Host *shost = info->host;

 dev_dbg(&link->dev, "SYM53C500_release\n");




 scsi_remove_host(shost);





 if (shost->irq)
  free_irq(shost->irq, shost);
 if (shost->io_port && shost->n_io_port)
  release_region(shost->io_port, shost->n_io_port);

 pcmcia_disable_device(link);

 scsi_host_put(shost);
}
