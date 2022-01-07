
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct Scsi_Host {int irq; scalar_t__* hostdata; } ;
struct NCR_700_Host_Parameters {int base; } ;


 int NCR_700_release (struct Scsi_Host*) ;
 struct Scsi_Host* dev_get_drvdata (int *) ;
 int free_irq (int ,struct Scsi_Host*) ;
 int iounmap (int ) ;
 int kfree (struct NCR_700_Host_Parameters*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static int snirm710_driver_remove(struct platform_device *dev)
{
 struct Scsi_Host *host = dev_get_drvdata(&dev->dev);
 struct NCR_700_Host_Parameters *hostdata =
  (struct NCR_700_Host_Parameters *)host->hostdata[0];

 scsi_remove_host(host);
 NCR_700_release(host);
 free_irq(host->irq, host);
 iounmap(hostdata->base);
 kfree(hostdata);

 return 0;
}
