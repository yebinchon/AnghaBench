
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp {scalar_t__ rev; int host; } ;


 scalar_t__ ESP236 ;
 int ESP_CMD_FLUSH ;
 int ESP_FFLAGS ;
 int ESP_FF_FBYTES ;
 int KERN_ALERT ;
 int esp_read8 (int ) ;
 int scsi_esp_cmd (struct esp*,int ) ;
 int shost_printk (int ,int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void esp_flush_fifo(struct esp *esp)
{
 scsi_esp_cmd(esp, ESP_CMD_FLUSH);
 if (esp->rev == ESP236) {
  int lim = 1000;

  while (esp_read8(ESP_FFLAGS) & ESP_FF_FBYTES) {
   if (--lim == 0) {
    shost_printk(KERN_ALERT, esp->host,
          "ESP_FF_BYTES will not clear!\n");
    break;
   }
   udelay(1);
  }
 }
}
