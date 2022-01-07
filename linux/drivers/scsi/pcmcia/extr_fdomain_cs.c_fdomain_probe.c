
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int config_flags; TYPE_1__** resource; struct Scsi_Host* priv; int dev; int irq; int config_regs; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int start; } ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int ENODEV ;
 int FDOMAIN_REGION_SIZE ;
 int PRESENT_OPTION ;
 int dev_err (int *,char*) ;
 int fdomain_config_check ;
 struct Scsi_Host* fdomain_create (int ,int ,int,int *) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 int pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;
 int release_region (int ,int ) ;
 int request_region (int ,int ,char*) ;

__attribute__((used)) static int fdomain_probe(struct pcmcia_device *link)
{
 int ret;
 struct Scsi_Host *sh;

 link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;
 link->config_regs = PRESENT_OPTION;

 ret = pcmcia_loop_config(link, fdomain_config_check, ((void*)0));
 if (ret)
  return ret;

 ret = pcmcia_enable_device(link);
 if (ret)
  goto fail_disable;

 if (!request_region(link->resource[0]->start, FDOMAIN_REGION_SIZE,
       "fdomain_cs"))
  goto fail_disable;

 sh = fdomain_create(link->resource[0]->start, link->irq, 7, &link->dev);
 if (!sh) {
  dev_err(&link->dev, "Controller initialization failed");
  ret = -ENODEV;
  goto fail_release;
 }

 link->priv = sh;

 return 0;

fail_release:
 release_region(link->resource[0]->start, FDOMAIN_REGION_SIZE);
fail_disable:
 pcmcia_disable_device(link);
 return ret;
}
