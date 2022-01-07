
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int * resource; } ;
struct esp {int dmarev; int dma_regs; struct platform_device* dma; } ;


 int DMA_CSR ;
 int DMA_DEVICE_ID ;






 int ENOMEM ;
 int dma_read32 (int ) ;
 int dvmaesc1 ;
 int dvmahme ;
 int dvmarev0 ;
 int dvmarev1 ;
 int dvmarev2 ;
 int dvmarevplus ;
 int of_ioremap (int *,int ,int ,char*) ;
 int resource_size (int *) ;

__attribute__((used)) static int esp_sbus_setup_dma(struct esp *esp, struct platform_device *dma_of)
{
 esp->dma = dma_of;

 esp->dma_regs = of_ioremap(&dma_of->resource[0], 0,
       resource_size(&dma_of->resource[0]),
       "espdma");
 if (!esp->dma_regs)
  return -ENOMEM;

 switch (dma_read32(DMA_CSR) & DMA_DEVICE_ID) {
 case 131:
  esp->dmarev = dvmarev0;
  break;
 case 133:
  esp->dmarev = dvmaesc1;
  break;
 case 130:
  esp->dmarev = dvmarev1;
  break;
 case 129:
  esp->dmarev = dvmarev2;
  break;
 case 132:
  esp->dmarev = dvmahme;
  break;
 case 128:
  esp->dmarev = dvmarevplus;
  break;
 }

 return 0;

}
