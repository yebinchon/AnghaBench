
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_request {scalar_t__ sz; int page_dma; int page; } ;
struct MPT3SAS_ADAPTER {scalar_t__ config_page_sz; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,scalar_t__,int ,int ) ;

__attribute__((used)) static void
_config_free_config_dma_memory(struct MPT3SAS_ADAPTER *ioc,
 struct config_request *mem)
{
 if (mem->sz > ioc->config_page_sz)
  dma_free_coherent(&ioc->pdev->dev, mem->sz, mem->page,
      mem->page_dma);
}
