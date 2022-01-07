
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct esp {int dummy; } ;


 int esp_get_bursts (struct esp*,struct platform_device*) ;
 int esp_get_clock_params (struct esp*) ;
 int esp_get_differential (struct esp*) ;
 int esp_get_scsi_id (struct esp*,struct platform_device*) ;

__attribute__((used)) static void esp_sbus_get_props(struct esp *esp, struct platform_device *espdma)
{
 esp_get_scsi_id(esp, espdma);
 esp_get_differential(esp);
 esp_get_clock_params(esp);
 esp_get_bursts(esp, espdma);
}
