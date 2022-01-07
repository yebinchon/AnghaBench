
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esp {int config1; int scsi_id; int config2; int prev_cfg3; scalar_t__ cfact; int rev; int sync_defp; } ;


 int ESP100 ;
 int ESP100A ;
 int ESP236 ;
 scalar_t__ ESP_CCF_F5 ;
 int ESP_CFG2 ;
 int ESP_CFG3 ;
 int ESP_CONFIG1_PENABLE ;
 int ESP_CONFIG2_MAGIC ;
 int ESP_CONFIG2_REGPARITY ;
 int ESP_CONFIG2_SCSI2ENAB ;
 int FAST ;
 int SYNC_DEFP_FAST ;
 int esp_read8 (int ) ;
 int esp_set_all_config3 (struct esp*,int) ;
 int esp_write8 (int,int ) ;

__attribute__((used)) static void esp_get_revision(struct esp *esp)
{
 u8 val;

 esp->config1 = (ESP_CONFIG1_PENABLE | (esp->scsi_id & 7));
 if (esp->config2 == 0) {
  esp->config2 = (ESP_CONFIG2_SCSI2ENAB | ESP_CONFIG2_REGPARITY);
  esp_write8(esp->config2, ESP_CFG2);

  val = esp_read8(ESP_CFG2);
  val &= ~ESP_CONFIG2_MAGIC;

  esp->config2 = 0;
  if (val != (ESP_CONFIG2_SCSI2ENAB | ESP_CONFIG2_REGPARITY)) {





   esp->rev = ESP100;
   return;
  }
 }

 esp_set_all_config3(esp, 5);
 esp->prev_cfg3 = 5;
 esp_write8(esp->config2, ESP_CFG2);
 esp_write8(0, ESP_CFG3);
 esp_write8(esp->prev_cfg3, ESP_CFG3);

 val = esp_read8(ESP_CFG3);
 if (val != 5) {



  esp->rev = ESP100A;
 } else {
  esp_set_all_config3(esp, 0);
  esp->prev_cfg3 = 0;
  esp_write8(esp->prev_cfg3, ESP_CFG3);




  if (esp->cfact == 0 || esp->cfact > ESP_CCF_F5) {
   esp->rev = FAST;
   esp->sync_defp = SYNC_DEFP_FAST;
  } else {
   esp->rev = ESP236;
  }
 }
}
