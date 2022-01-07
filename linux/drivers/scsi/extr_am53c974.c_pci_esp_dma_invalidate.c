
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_esp_priv {scalar_t__ dma_status; } ;
struct esp {int dummy; } ;


 int ESP_DMA_CMD ;
 int ESP_DMA_CMD_IDLE ;
 int esp_dma_log (char*) ;
 struct pci_esp_priv* pci_esp_get_priv (struct esp*) ;
 int pci_esp_write8 (struct esp*,int ,int ) ;

__attribute__((used)) static void pci_esp_dma_invalidate(struct esp *esp)
{
 struct pci_esp_priv *pep = pci_esp_get_priv(esp);

 esp_dma_log("invalidate DMA\n");

 pci_esp_write8(esp, ESP_DMA_CMD_IDLE, ESP_DMA_CMD);
 pep->dma_status = 0;
}
