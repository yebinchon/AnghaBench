
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct Scsi_Host {int base; int irq; scalar_t__* hostdata; } ;
struct NCR_700_Host_Parameters {int dummy; } ;


 int NCR_700_release (struct Scsi_Host*) ;
 struct Scsi_Host* dev_get_drvdata (struct device*) ;
 int free_irq (int ,struct Scsi_Host*) ;
 int kfree (struct NCR_700_Host_Parameters*) ;
 int release_region (int ,int) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static int sim710_device_remove(struct device *dev)
{
 struct Scsi_Host *host = dev_get_drvdata(dev);
 struct NCR_700_Host_Parameters *hostdata =
  (struct NCR_700_Host_Parameters *)host->hostdata[0];

 scsi_remove_host(host);
 NCR_700_release(host);
 kfree(hostdata);
 free_irq(host->irq, host);
 release_region(host->base, 64);
 return 0;
}
