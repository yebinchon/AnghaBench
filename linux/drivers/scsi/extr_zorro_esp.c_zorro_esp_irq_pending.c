
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp {int dummy; } ;


 int ESP_STATUS ;
 int ESP_STAT_INTR ;
 int zorro_esp_read8 (struct esp*,int ) ;

__attribute__((used)) static int zorro_esp_irq_pending(struct esp *esp)
{

 if (zorro_esp_read8(esp, ESP_STATUS) & ESP_STAT_INTR)
  return 1;

 return 0;
}
