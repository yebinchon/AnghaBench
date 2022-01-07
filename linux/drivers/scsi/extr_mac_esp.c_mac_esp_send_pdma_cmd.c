
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mac_esp_priv {int dummy; } ;
struct esp {scalar_t__ send_cmd_error; } ;


 int ESP_CMD_FLUSH ;
 int ESP_TCLOW ;
 int ESP_TCMED ;
 struct mac_esp_priv* MAC_ESP_GET_PRIV (struct esp*) ;
 int MAC_ESP_PDMA_LOOP (char*) ;
 int esp_read8 (int ) ;
 int esp_write8 (int,int ) ;
 scalar_t__ mac_esp_wait_for_dreq (struct esp*) ;
 scalar_t__ mac_esp_wait_for_empty_fifo (struct esp*) ;
 int scsi_esp_cmd (struct esp*,int ) ;

__attribute__((used)) static void mac_esp_send_pdma_cmd(struct esp *esp, u32 addr, u32 esp_count,
      u32 dma_count, int write, u8 cmd)
{
 struct mac_esp_priv *mep = MAC_ESP_GET_PRIV(esp);

 esp->send_cmd_error = 0;

 if (!write)
  scsi_esp_cmd(esp, ESP_CMD_FLUSH);

 esp_write8((esp_count >> 0) & 0xFF, ESP_TCLOW);
 esp_write8((esp_count >> 8) & 0xFF, ESP_TCMED);

 scsi_esp_cmd(esp, cmd);

 do {
  unsigned int count32 = esp_count >> 5;
  unsigned int count2 = (esp_count & 0x1F) >> 1;
  unsigned int count1 = esp_count & 1;
  unsigned int start_addr = addr;

  if (mac_esp_wait_for_dreq(esp))
   break;

  if (write) {
   MAC_ESP_PDMA_LOOP("%4@,%0@+");

   esp_count -= addr - start_addr;
  } else {
   unsigned int n;

   MAC_ESP_PDMA_LOOP("%0@+,%4@");

   if (mac_esp_wait_for_empty_fifo(esp))
    break;

   n = (esp_read8(ESP_TCMED) << 8) + esp_read8(ESP_TCLOW);
   addr = start_addr + esp_count - n;
   esp_count = n;
  }
 } while (esp_count);
}
