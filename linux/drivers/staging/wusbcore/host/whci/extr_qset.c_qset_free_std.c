
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct whc_std {int num_pointers; int len; struct whc_std* pl_virt; int dma_addr; struct whc_std* bounce_buf; int buf_ptr; TYPE_1__* urb; int list_node; } ;
struct whc_page_list_entry {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct whc {TYPE_2__ wusbhc; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int pipe; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int kfree (struct whc_std*) ;
 int le64_to_cpu (int ) ;
 int list_del (int *) ;
 int qset_copy_bounce_to_sg (struct whc*,struct whc_std*) ;
 int usb_pipeout (int ) ;

void qset_free_std(struct whc *whc, struct whc_std *std)
{
 list_del(&std->list_node);
 if (std->bounce_buf) {
  bool is_out = usb_pipeout(std->urb->pipe);
  dma_addr_t dma_addr;

  if (std->num_pointers)
   dma_addr = le64_to_cpu(std->pl_virt[0].buf_ptr);
  else
   dma_addr = std->dma_addr;

  dma_unmap_single(whc->wusbhc.dev, dma_addr,
     std->len, is_out ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
  if (!is_out)
   qset_copy_bounce_to_sg(whc, std);
  kfree(std->bounce_buf);
 }
 if (std->pl_virt) {
  if (!dma_mapping_error(whc->wusbhc.dev, std->dma_addr))
   dma_unmap_single(whc->wusbhc.dev, std->dma_addr,
      std->num_pointers * sizeof(struct whc_page_list_entry),
      DMA_TO_DEVICE);
  kfree(std->pl_virt);
  std->pl_virt = ((void*)0);
 }
 kfree(std);
}
