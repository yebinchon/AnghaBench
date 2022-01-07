
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct nvme_iod {TYPE_2__* nvmeq; } ;
struct TYPE_3__ {int sgls; } ;
struct nvme_dev {TYPE_1__ ctrl; } ;
struct TYPE_4__ {int qid; } ;


 unsigned int DIV_ROUND_UP (int ,int) ;
 struct nvme_iod* blk_mq_rq_to_pdu (struct request*) ;
 int blk_rq_nr_phys_segments (struct request*) ;
 int blk_rq_payload_bytes (struct request*) ;
 unsigned int sgl_threshold ;

__attribute__((used)) static inline bool nvme_pci_use_sgls(struct nvme_dev *dev, struct request *req)
{
 struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
 int nseg = blk_rq_nr_phys_segments(req);
 unsigned int avg_seg_size;

 if (nseg == 0)
  return 0;

 avg_seg_size = DIV_ROUND_UP(blk_rq_payload_bytes(req), nseg);

 if (!(dev->ctrl.sgls & ((1 << 0) | (1 << 1))))
  return 0;
 if (!iod->nvmeq->qid)
  return 0;
 if (!sgl_threshold || avg_seg_size < sgl_threshold)
  return 0;
 return 1;
}
