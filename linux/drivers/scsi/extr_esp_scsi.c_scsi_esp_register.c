
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct esp {size_t rev; int cfreq; TYPE_1__* host; int dev; int scsi_id; int cfact; int dma_regs; int regs; scalar_t__ num_tags; } ;
struct TYPE_3__ {int cmd_per_lun; int unique_id; int irq; int max_lun; int transportt; } ;


 scalar_t__ ESP_DEFAULT_TAGS ;
 int ESP_MAX_LUN ;
 int KERN_INFO ;
 int dev_printk (int ,int ,char*,int,int ,int,int ,...) ;
 int esp_bootup_reset (struct esp*) ;
 int esp_bus_reset_settle ;
 int * esp_chip_names ;
 int esp_get_revision (struct esp*) ;
 int esp_init_swstate (struct esp*) ;
 int esp_set_clock_params (struct esp*) ;
 int esp_transport_template ;
 int scsi_add_host (TYPE_1__*,int ) ;
 int scsi_scan_host (TYPE_1__*) ;
 int ssleep (int ) ;

int scsi_esp_register(struct esp *esp)
{
 static int instance;
 int err;

 if (!esp->num_tags)
  esp->num_tags = ESP_DEFAULT_TAGS;
 esp->host->transportt = esp_transport_template;
 esp->host->max_lun = ESP_MAX_LUN;
 esp->host->cmd_per_lun = 2;
 esp->host->unique_id = instance;

 esp_set_clock_params(esp);

 esp_get_revision(esp);

 esp_init_swstate(esp);

 esp_bootup_reset(esp);

 dev_printk(KERN_INFO, esp->dev, "esp%u: regs[%1p:%1p] irq[%u]\n",
     esp->host->unique_id, esp->regs, esp->dma_regs,
     esp->host->irq);
 dev_printk(KERN_INFO, esp->dev,
     "esp%u: is a %s, %u MHz (ccf=%u), SCSI ID %u\n",
     esp->host->unique_id, esp_chip_names[esp->rev],
     esp->cfreq / 1000000, esp->cfact, esp->scsi_id);


 ssleep(esp_bus_reset_settle);

 err = scsi_add_host(esp->host, esp->dev);
 if (err)
  return err;

 instance++;

 scsi_scan_host(esp->host);

 return 0;
}
