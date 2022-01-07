
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_ctrl_info {scalar_t__ iomem_base; int error_buffer_dma_handle; scalar_t__ error_buffer; int error_buffer_length; TYPE_1__* pci_dev; int admin_queue_memory_base_dma_handle; scalar_t__ admin_queue_memory_base; int admin_queue_memory_length; int queue_memory_base_dma_handle; scalar_t__ queue_memory_base; int queue_memory_length; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int pqi_cleanup_pci_init (struct pqi_ctrl_info*) ;
 int pqi_free_all_io_requests (struct pqi_ctrl_info*) ;
 int pqi_free_ctrl_info (struct pqi_ctrl_info*) ;
 int pqi_free_interrupts (struct pqi_ctrl_info*) ;
 int pqi_stop_heartbeat_timer (struct pqi_ctrl_info*) ;

__attribute__((used)) static void pqi_free_ctrl_resources(struct pqi_ctrl_info *ctrl_info)
{
 pqi_stop_heartbeat_timer(ctrl_info);
 pqi_free_interrupts(ctrl_info);
 if (ctrl_info->queue_memory_base)
  dma_free_coherent(&ctrl_info->pci_dev->dev,
   ctrl_info->queue_memory_length,
   ctrl_info->queue_memory_base,
   ctrl_info->queue_memory_base_dma_handle);
 if (ctrl_info->admin_queue_memory_base)
  dma_free_coherent(&ctrl_info->pci_dev->dev,
   ctrl_info->admin_queue_memory_length,
   ctrl_info->admin_queue_memory_base,
   ctrl_info->admin_queue_memory_base_dma_handle);
 pqi_free_all_io_requests(ctrl_info);
 if (ctrl_info->error_buffer)
  dma_free_coherent(&ctrl_info->pci_dev->dev,
   ctrl_info->error_buffer_length,
   ctrl_info->error_buffer,
   ctrl_info->error_buffer_dma_handle);
 if (ctrl_info->iomem_base)
  pqi_cleanup_pci_init(ctrl_info);
 pqi_free_ctrl_info(ctrl_info);
}
