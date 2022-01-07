
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {struct nvm_rq* end_io_data; } ;
struct nvme_nvm_command {int dummy; } ;
struct nvm_rq {int nr_ppas; } ;
struct nvm_geo {int csecs; } ;
struct nvm_dev {struct request_queue* q; struct nvm_geo geo; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct request*) ;
 int PTR_ERR (struct request*) ;
 int blk_execute_rq_nowait (struct request_queue*,int *,struct request*,int ,int ) ;
 int blk_rq_map_kern (struct request_queue*,struct request*,void*,int,int ) ;
 int kfree (struct nvme_nvm_command*) ;
 struct nvme_nvm_command* kzalloc (int,int ) ;
 struct request* nvme_nvm_alloc_request (struct request_queue*,struct nvm_rq*,struct nvme_nvm_command*) ;
 int nvme_nvm_end_io ;

__attribute__((used)) static int nvme_nvm_submit_io(struct nvm_dev *dev, struct nvm_rq *rqd,
         void *buf)
{
 struct nvm_geo *geo = &dev->geo;
 struct request_queue *q = dev->q;
 struct nvme_nvm_command *cmd;
 struct request *rq;
 int ret;

 cmd = kzalloc(sizeof(struct nvme_nvm_command), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 rq = nvme_nvm_alloc_request(q, rqd, cmd);
 if (IS_ERR(rq)) {
  ret = PTR_ERR(rq);
  goto err_free_cmd;
 }

 if (buf) {
  ret = blk_rq_map_kern(q, rq, buf, geo->csecs * rqd->nr_ppas,
    GFP_KERNEL);
  if (ret)
   goto err_free_cmd;
 }

 rq->end_io_data = rqd;

 blk_execute_rq_nowait(q, ((void*)0), rq, 0, nvme_nvm_end_io);

 return 0;

err_free_cmd:
 kfree(cmd);
 return ret;
}
