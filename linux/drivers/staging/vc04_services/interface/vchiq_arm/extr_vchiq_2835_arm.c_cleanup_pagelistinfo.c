
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_pagelist_info {unsigned int num_pages; int dma_addr; int pagelist; int pagelist_buffer_size; int * pages; scalar_t__ pages_need_release; int dma_dir; int scatterlist; scalar_t__ scatterlist_mapped; } ;


 int dma_free_coherent (int ,int ,int ,int ) ;
 int dma_unmap_sg (int ,int ,unsigned int,int ) ;
 int g_dev ;
 int put_page (int ) ;

__attribute__((used)) static void
cleanup_pagelistinfo(struct vchiq_pagelist_info *pagelistinfo)
{
 if (pagelistinfo->scatterlist_mapped) {
  dma_unmap_sg(g_dev, pagelistinfo->scatterlist,
        pagelistinfo->num_pages, pagelistinfo->dma_dir);
 }

 if (pagelistinfo->pages_need_release) {
  unsigned int i;

  for (i = 0; i < pagelistinfo->num_pages; i++)
   put_page(pagelistinfo->pages[i]);
 }

 dma_free_coherent(g_dev, pagelistinfo->pagelist_buffer_size,
     pagelistinfo->pagelist, pagelistinfo->dma_addr);
}
