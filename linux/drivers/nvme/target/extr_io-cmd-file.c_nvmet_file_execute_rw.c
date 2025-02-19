
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mpool_alloc; scalar_t__ bvec; } ;
struct nvmet_req {scalar_t__ sg_cnt; TYPE_2__ f; TYPE_1__* ns; scalar_t__ inline_bvec; } ;
struct bio_vec {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {scalar_t__ buffered_io; int bvec_pool; } ;


 int GFP_KERNEL ;
 int IOCB_NOWAIT ;
 scalar_t__ NVMET_MAX_INLINE_BIOVEC ;
 scalar_t__ kmalloc_array (scalar_t__,int,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ mempool_alloc (int ,int ) ;
 int nvmet_file_execute_io (struct nvmet_req*,int ) ;
 int nvmet_file_submit_buffered_io (struct nvmet_req*) ;
 int nvmet_req_complete (struct nvmet_req*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void nvmet_file_execute_rw(struct nvmet_req *req)
{
 ssize_t nr_bvec = req->sg_cnt;

 if (!req->sg_cnt || !nr_bvec) {
  nvmet_req_complete(req, 0);
  return;
 }

 if (nr_bvec > NVMET_MAX_INLINE_BIOVEC)
  req->f.bvec = kmalloc_array(nr_bvec, sizeof(struct bio_vec),
    GFP_KERNEL);
 else
  req->f.bvec = req->inline_bvec;

 if (unlikely(!req->f.bvec)) {

  req->f.bvec = mempool_alloc(req->ns->bvec_pool, GFP_KERNEL);
  req->f.mpool_alloc = 1;
 } else
  req->f.mpool_alloc = 0;

 if (req->ns->buffered_io) {
  if (likely(!req->f.mpool_alloc) &&
    nvmet_file_execute_io(req, IOCB_NOWAIT))
   return;
  nvmet_file_submit_buffered_io(req);
 } else
  nvmet_file_execute_io(req, 0);
}
