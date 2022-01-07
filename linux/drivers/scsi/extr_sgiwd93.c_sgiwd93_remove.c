
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sgiwd93_platform_data {int irq; } ;
struct TYPE_2__ {struct sgiwd93_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ip22_hostdata {int dma; int cpu; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int DMA_ATTR_NON_CONSISTENT ;
 int HPC_DMA_SIZE ;
 int dma_free_attrs (TYPE_1__*,int ,int ,int ,int ) ;
 int free_irq (int ,struct Scsi_Host*) ;
 struct Scsi_Host* platform_get_drvdata (struct platform_device*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static int sgiwd93_remove(struct platform_device *pdev)
{
 struct Scsi_Host *host = platform_get_drvdata(pdev);
 struct ip22_hostdata *hdata = (struct ip22_hostdata *) host->hostdata;
 struct sgiwd93_platform_data *pd = pdev->dev.platform_data;

 scsi_remove_host(host);
 free_irq(pd->irq, host);
 dma_free_attrs(&pdev->dev, HPC_DMA_SIZE, hdata->cpu, hdata->dma,
         DMA_ATTR_NON_CONSISTENT);
 scsi_host_put(host);
 return 0;
}
