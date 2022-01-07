
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct esp {int config2; } ;


 int ESP_CONFIG2_FENAB ;

__attribute__((used)) static u32 pci_esp_dma_length_limit(struct esp *esp, u32 dma_addr, u32 dma_len)
{
 int dma_limit = 16;
 u32 base, end;





 if (esp->config2 & ESP_CONFIG2_FENAB)
  dma_limit = 24;

 if (dma_len > (1U << dma_limit))
  dma_len = (1U << dma_limit);




 base = dma_addr & ((1U << 24) - 1U);
 end = base + dma_len;
 if (end > (1U << 24))
  end = (1U <<24);
 dma_len = end - base;

 return dma_len;
}
