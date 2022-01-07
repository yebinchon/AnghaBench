
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_ctrl_info {int error_buffer; int error_buffer_dma_handle; int error_buffer_length; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static inline int pqi_alloc_error_buffer(struct pqi_ctrl_info *ctrl_info)
{
 ctrl_info->error_buffer = dma_alloc_coherent(&ctrl_info->pci_dev->dev,
           ctrl_info->error_buffer_length,
           &ctrl_info->error_buffer_dma_handle,
           GFP_KERNEL);

 if (!ctrl_info->error_buffer)
  return -ENOMEM;

 return 0;
}
