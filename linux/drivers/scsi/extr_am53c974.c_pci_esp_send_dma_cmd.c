
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_esp_priv {scalar_t__ dma_status; } ;
struct esp {int config2; } ;


 int BUG_ON (int) ;
 int ESP_CMD_DMA ;
 int ESP_CONFIG2_FENAB ;
 int ESP_DMA_CMD ;
 int ESP_DMA_CMD_DIR ;
 int ESP_DMA_CMD_IDLE ;
 int ESP_DMA_CMD_START ;
 int ESP_DMA_SPA ;
 int ESP_DMA_STC ;
 int ESP_TCHI ;
 int ESP_TCLOW ;
 int ESP_TCMED ;
 int esp_dma_log (char*,int,int,int) ;
 struct pci_esp_priv* pci_esp_get_priv (struct esp*) ;
 int pci_esp_write32 (struct esp*,int,int ) ;
 int pci_esp_write8 (struct esp*,int,int ) ;
 int scsi_esp_cmd (struct esp*,int) ;

__attribute__((used)) static void pci_esp_send_dma_cmd(struct esp *esp, u32 addr, u32 esp_count,
     u32 dma_count, int write, u8 cmd)
{
 struct pci_esp_priv *pep = pci_esp_get_priv(esp);
 u32 val = 0;

 BUG_ON(!(cmd & ESP_CMD_DMA));

 pep->dma_status = 0;


 if (write)

  val |= ESP_DMA_CMD_DIR;
 pci_esp_write8(esp, ESP_DMA_CMD_IDLE | val, ESP_DMA_CMD);

 pci_esp_write8(esp, (esp_count >> 0) & 0xff, ESP_TCLOW);
 pci_esp_write8(esp, (esp_count >> 8) & 0xff, ESP_TCMED);
 if (esp->config2 & ESP_CONFIG2_FENAB)
  pci_esp_write8(esp, (esp_count >> 16) & 0xff, ESP_TCHI);

 pci_esp_write32(esp, esp_count, ESP_DMA_STC);
 pci_esp_write32(esp, addr, ESP_DMA_SPA);

 esp_dma_log("start dma addr[%x] count[%d:%d]\n",
      addr, esp_count, dma_count);

 scsi_esp_cmd(esp, cmd);

 pci_esp_write8(esp, ESP_DMA_CMD_START | val, ESP_DMA_CMD);
}
