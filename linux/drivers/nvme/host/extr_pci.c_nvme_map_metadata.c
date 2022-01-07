
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct nvme_iod {int meta_dma; } ;
struct nvme_dev {int dev; } ;
struct TYPE_2__ {int metadata; } ;
struct nvme_command {TYPE_1__ rw; } ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 struct nvme_iod* blk_mq_rq_to_pdu (struct request*) ;
 int cpu_to_le64 (int ) ;
 int dma_map_bvec (int ,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int rq_dma_dir (struct request*) ;
 int rq_integrity_vec (struct request*) ;

__attribute__((used)) static blk_status_t nvme_map_metadata(struct nvme_dev *dev, struct request *req,
  struct nvme_command *cmnd)
{
 struct nvme_iod *iod = blk_mq_rq_to_pdu(req);

 iod->meta_dma = dma_map_bvec(dev->dev, rq_integrity_vec(req),
   rq_dma_dir(req), 0);
 if (dma_mapping_error(dev->dev, iod->meta_dma))
  return BLK_STS_IOERR;
 cmnd->rw.metadata = cpu_to_le64(iod->meta_dma);
 return 0;
}
