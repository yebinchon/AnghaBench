
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bv_offset; struct page* bv_page; } ;
struct request {int rq_flags; TYPE_2__ special_vec; TYPE_1__* rq_disk; } ;
struct page {int dummy; } ;
struct nvme_ns {TYPE_3__* ctrl; } ;
struct TYPE_6__ {int discard_page_busy; struct page* discard_page; } ;
struct TYPE_4__ {struct nvme_ns* private_data; } ;


 int RQF_SPECIAL_PAYLOAD ;
 int clear_bit_unlock (int ,int *) ;
 int kfree (scalar_t__) ;
 scalar_t__ page_address (struct page*) ;

void nvme_cleanup_cmd(struct request *req)
{
 if (req->rq_flags & RQF_SPECIAL_PAYLOAD) {
  struct nvme_ns *ns = req->rq_disk->private_data;
  struct page *page = req->special_vec.bv_page;

  if (page == ns->ctrl->discard_page)
   clear_bit_unlock(0, &ns->ctrl->discard_page_busy);
  else
   kfree(page_address(page) + req->special_vec.bv_offset);
 }
}
