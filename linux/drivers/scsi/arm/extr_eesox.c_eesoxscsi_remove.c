
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct expansion_card {int dev; int irq; } ;
struct TYPE_4__ {scalar_t__ dma; } ;
struct TYPE_3__ {TYPE_2__ scsi; } ;
struct eesoxscsi_info {TYPE_1__ info; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 scalar_t__ NO_DMA ;
 int dev_attr_bus_term ;
 int device_remove_file (int *,int *) ;
 struct Scsi_Host* ecard_get_drvdata (struct expansion_card*) ;
 int ecard_release_resources (struct expansion_card*) ;
 int ecard_set_drvdata (struct expansion_card*,int *) ;
 int fas216_release (struct Scsi_Host*) ;
 int fas216_remove (struct Scsi_Host*) ;
 int free_dma (scalar_t__) ;
 int free_irq (int ,struct eesoxscsi_info*) ;
 int scsi_host_put (struct Scsi_Host*) ;

__attribute__((used)) static void eesoxscsi_remove(struct expansion_card *ec)
{
 struct Scsi_Host *host = ecard_get_drvdata(ec);
 struct eesoxscsi_info *info = (struct eesoxscsi_info *)host->hostdata;

 ecard_set_drvdata(ec, ((void*)0));
 fas216_remove(host);

 if (info->info.scsi.dma != NO_DMA)
  free_dma(info->info.scsi.dma);
 free_irq(ec->irq, info);

 device_remove_file(&ec->dev, &dev_attr_bus_term);

 fas216_release(host);
 scsi_host_put(host);
 ecard_release_resources(ec);
}
