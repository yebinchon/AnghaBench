
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int * dbbuf_cq_ei; int * dbbuf_sq_ei; int * dbbuf_cq_db; int * dbbuf_sq_db; } ;
struct nvme_dev {int db_stride; int * dbbuf_eis; int * dbbuf_dbs; } ;


 size_t cq_idx (int,int ) ;
 size_t sq_idx (int,int ) ;

__attribute__((used)) static void nvme_dbbuf_init(struct nvme_dev *dev,
       struct nvme_queue *nvmeq, int qid)
{
 if (!dev->dbbuf_dbs || !qid)
  return;

 nvmeq->dbbuf_sq_db = &dev->dbbuf_dbs[sq_idx(qid, dev->db_stride)];
 nvmeq->dbbuf_cq_db = &dev->dbbuf_dbs[cq_idx(qid, dev->db_stride)];
 nvmeq->dbbuf_sq_ei = &dev->dbbuf_eis[sq_idx(qid, dev->db_stride)];
 nvmeq->dbbuf_cq_ei = &dev->dbbuf_eis[cq_idx(qid, dev->db_stride)];
}
