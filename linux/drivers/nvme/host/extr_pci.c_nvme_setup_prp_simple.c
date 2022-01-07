
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_4__ {void* prp2; void* prp1; } ;
struct nvme_rw_command {TYPE_2__ dptr; } ;
struct nvme_iod {unsigned int dma_len; scalar_t__ first_dma; } ;
struct TYPE_3__ {int page_size; } ;
struct nvme_dev {int dev; TYPE_1__ ctrl; } ;
struct bio_vec {int bv_offset; unsigned int bv_len; } ;
typedef int blk_status_t ;


 int BLK_STS_RESOURCE ;
 struct nvme_iod* blk_mq_rq_to_pdu (struct request*) ;
 void* cpu_to_le64 (scalar_t__) ;
 scalar_t__ dma_map_bvec (int ,struct bio_vec*,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int rq_dma_dir (struct request*) ;

__attribute__((used)) static blk_status_t nvme_setup_prp_simple(struct nvme_dev *dev,
  struct request *req, struct nvme_rw_command *cmnd,
  struct bio_vec *bv)
{
 struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
 unsigned int offset = bv->bv_offset & (dev->ctrl.page_size - 1);
 unsigned int first_prp_len = dev->ctrl.page_size - offset;

 iod->first_dma = dma_map_bvec(dev->dev, bv, rq_dma_dir(req), 0);
 if (dma_mapping_error(dev->dev, iod->first_dma))
  return BLK_STS_RESOURCE;
 iod->dma_len = bv->bv_len;

 cmnd->dptr.prp1 = cpu_to_le64(iod->first_dma);
 if (bv->bv_len > first_prp_len)
  cmnd->dptr.prp2 = cpu_to_le64(iod->first_dma + first_prp_len);
 return 0;
}
