
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * irqs; } ;
struct platform_device {TYPE_1__ archdata; } ;
struct esp {int dev; struct Scsi_Host* host; } ;
struct Scsi_Host {int irq; } ;


 int IRQF_SHARED ;
 int request_irq (int ,int ,int ,char*,struct esp*) ;
 int scsi_esp_intr ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int esp_sbus_register_irq(struct esp *esp)
{
 struct Scsi_Host *host = esp->host;
 struct platform_device *op = to_platform_device(esp->dev);

 host->irq = op->archdata.irqs[0];
 return request_irq(host->irq, scsi_esp_intr, IRQF_SHARED, "ESP", esp);
}
