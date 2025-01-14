
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct Scsi_Host {int irq; } ;
struct NCR_700_Host_Parameters {int dummy; } ;


 int NCR_700_release (struct Scsi_Host*) ;
 int free_irq (int ,struct Scsi_Host*) ;
 unsigned long in_be32 (int) ;
 int kfree (struct NCR_700_Host_Parameters*) ;
 int out_be32 (int,unsigned long volatile) ;
 struct Scsi_Host* platform_get_drvdata (struct platform_device*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 struct NCR_700_Host_Parameters* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int mvme16x_device_remove(struct platform_device *dev)
{
 struct Scsi_Host *host = platform_get_drvdata(dev);
 struct NCR_700_Host_Parameters *hostdata = shost_priv(host);


 {
  volatile unsigned long v;

  v = in_be32(0xfff4202c);
  v &= ~0x10;
  out_be32(0xfff4202c, v);
 }
 scsi_remove_host(host);
 NCR_700_release(host);
 kfree(hostdata);
 free_irq(host->irq, host);

 return 0;
}
