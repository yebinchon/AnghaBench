
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct esp {int rev; int sreg; int ireg; int host; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dma_error ) (struct esp*) ;} ;




 int ESP_INTR_SR ;
 int ESP_STAT_INTR ;
 int KERN_ERR ;
 int shost_printk (int ,int ,char*,...) ;
 int stub1 (struct esp*) ;

__attribute__((used)) static int esp_check_spur_intr(struct esp *esp)
{
 switch (esp->rev) {
 case 129:
 case 128:



  esp->sreg &= ~ESP_STAT_INTR;
  break;

 default:
  if (!(esp->sreg & ESP_STAT_INTR)) {
   if (esp->ireg & ESP_INTR_SR)
    return 1;




   if (!esp->ops->dma_error(esp)) {
    shost_printk(KERN_ERR, esp->host,
          "Spurious irq, sreg=%02x.\n",
          esp->sreg);
    return -1;
   }

   shost_printk(KERN_ERR, esp->host, "DMA error\n");


   return -1;
  }
  break;
 }

 return 0;
}
