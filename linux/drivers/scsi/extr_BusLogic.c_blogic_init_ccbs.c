
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct blogic_ccb {int allocgrp_size; struct blogic_ccb* next_all; struct blogic_ccb* next; int base_addr; int callback; scalar_t__ dma_handle; struct blogic_adapter* adapter; int status; scalar_t__ allocgrp_head; } ;
struct TYPE_2__ {int base_addr; } ;
struct blogic_adapter {int alloc_ccbs; struct blogic_ccb* all_ccbs; struct blogic_ccb* free_ccbs; TYPE_1__ fpinfo; } ;
typedef scalar_t__ dma_addr_t ;


 int BLOGIC_CCB_FREE ;
 scalar_t__ blogic_flashpoint_type (struct blogic_adapter*) ;
 int blogic_qcompleted_ccb ;
 int memset (void*,int ,int) ;

__attribute__((used)) static void blogic_init_ccbs(struct blogic_adapter *adapter, void *blk_pointer,
    int blk_size, dma_addr_t blkp)
{
 struct blogic_ccb *ccb = (struct blogic_ccb *) blk_pointer;
 unsigned int offset = 0;
 memset(blk_pointer, 0, blk_size);
 ccb->allocgrp_head = blkp;
 ccb->allocgrp_size = blk_size;
 while ((blk_size -= sizeof(struct blogic_ccb)) >= 0) {
  ccb->status = BLOGIC_CCB_FREE;
  ccb->adapter = adapter;
  ccb->dma_handle = (u32) blkp + offset;
  if (blogic_flashpoint_type(adapter)) {
   ccb->callback = blogic_qcompleted_ccb;
   ccb->base_addr = adapter->fpinfo.base_addr;
  }
  ccb->next = adapter->free_ccbs;
  ccb->next_all = adapter->all_ccbs;
  adapter->free_ccbs = ccb;
  adapter->all_ccbs = ccb;
  adapter->alloc_ccbs++;
  ccb++;
  offset += sizeof(struct blogic_ccb);
 }
}
