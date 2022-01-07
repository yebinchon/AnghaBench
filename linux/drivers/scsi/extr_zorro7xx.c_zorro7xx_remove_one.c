
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zorro_dev {int dummy; } ;
struct Scsi_Host {int irq; } ;
struct NCR_700_Host_Parameters {int dummy; } ;


 int NCR_700_release (struct Scsi_Host*) ;
 int free_irq (int ,struct Scsi_Host*) ;
 int kfree (struct NCR_700_Host_Parameters*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 struct NCR_700_Host_Parameters* shost_priv (struct Scsi_Host*) ;
 struct Scsi_Host* zorro_get_drvdata (struct zorro_dev*) ;
 int zorro_release_device (struct zorro_dev*) ;

__attribute__((used)) static void zorro7xx_remove_one(struct zorro_dev *z)
{
 struct Scsi_Host *host = zorro_get_drvdata(z);
 struct NCR_700_Host_Parameters *hostdata = shost_priv(host);

 scsi_remove_host(host);

 NCR_700_release(host);
 kfree(hostdata);
 free_irq(host->irq, host);
 zorro_release_device(z);
}
