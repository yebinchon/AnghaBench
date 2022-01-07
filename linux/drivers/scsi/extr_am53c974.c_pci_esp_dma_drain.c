
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esp_cmd_entry {int flags; } ;
struct esp {int sreg; struct esp_cmd_entry* active_cmd; } ;


 int ESP_CMD_FLAG_RESIDUAL ;
 int ESP_DIP ;
 int ESP_DMA_CMD ;
 int ESP_DMA_CMD_BLAST ;
 int ESP_DMA_CMD_DIR ;
 int ESP_DMA_CMD_IDLE ;
 int ESP_DMA_STATUS ;
 int ESP_DMA_STAT_BCMPLT ;
 int ESP_DOP ;
 int ESP_FFLAGS ;
 int ESP_FF_FBYTES ;
 int ESP_STAT_PMASK ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cpu_relax () ;
 int esp_dma_log (char*,int,int) ;
 int pci_esp_read8 (struct esp*,int ) ;
 int pci_esp_write8 (struct esp*,int,int ) ;

__attribute__((used)) static void pci_esp_dma_drain(struct esp *esp)
{
 u8 resid;
 int lim = 1000;


 if ((esp->sreg & ESP_STAT_PMASK) == ESP_DOP ||
     (esp->sreg & ESP_STAT_PMASK) == ESP_DIP)

  return;

 while (--lim > 0) {
  resid = pci_esp_read8(esp, ESP_FFLAGS) & ESP_FF_FBYTES;
  if (resid <= 1)
   break;
  cpu_relax();
 }
 lim = 1000;
 pci_esp_write8(esp, ESP_DMA_CMD_DIR | ESP_DMA_CMD_BLAST, ESP_DMA_CMD);
 while (pci_esp_read8(esp, ESP_DMA_STATUS) & ESP_DMA_STAT_BCMPLT) {
  if (--lim == 0)
   break;
  cpu_relax();
 }
 pci_esp_write8(esp, ESP_DMA_CMD_DIR | ESP_DMA_CMD_IDLE, ESP_DMA_CMD);
 esp_dma_log("DMA blast done (%d tries, %d bytes left)\n", lim, resid);

 if (WARN_ON_ONCE(resid == 1)) {
  struct esp_cmd_entry *ent = esp->active_cmd;

  ent->flags |= ESP_CMD_FLAG_RESIDUAL;
 }
}
