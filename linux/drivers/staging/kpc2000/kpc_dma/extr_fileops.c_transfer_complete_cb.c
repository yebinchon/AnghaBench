
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int nents; int * sgl; } ;
struct aio_cb_data {unsigned int page_count; scalar_t__ cpl; int flags; struct aio_cb_data* user_pages; TYPE_3__ sgt; TYPE_2__* ldev; } ;
struct TYPE_5__ {int dir; TYPE_1__* pldev; } ;
struct TYPE_4__ {int dev; } ;


 int BUG_ON (int ) ;
 int PageReserved (struct aio_cb_data) ;
 int complete (scalar_t__) ;
 int dma_unmap_sg (int *,int *,int ,int ) ;
 int kfree (struct aio_cb_data*) ;
 int put_page (struct aio_cb_data) ;
 int set_page_dirty (struct aio_cb_data) ;
 int sg_free_table (TYPE_3__*) ;

void transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
{
 unsigned int i;

 BUG_ON(acd == ((void*)0));
 BUG_ON(acd->user_pages == ((void*)0));
 BUG_ON(acd->sgt.sgl == ((void*)0));
 BUG_ON(acd->ldev == ((void*)0));
 BUG_ON(acd->ldev->pldev == ((void*)0));

 for (i = 0 ; i < acd->page_count ; i++) {
  if (!PageReserved(acd->user_pages[i])) {
   set_page_dirty(acd->user_pages[i]);
  }
 }

 dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);

 for (i = 0 ; i < acd->page_count ; i++) {
  put_page(acd->user_pages[i]);
 }

 sg_free_table(&acd->sgt);

 kfree(acd->user_pages);

 acd->flags = flags;

 if (acd->cpl) {
  complete(acd->cpl);
 } else {




  kfree(acd);
 }
}
