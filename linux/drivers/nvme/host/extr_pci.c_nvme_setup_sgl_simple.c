
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_3__ {int type; int length; int addr; } ;
struct TYPE_4__ {TYPE_1__ sgl; } ;
struct nvme_rw_command {TYPE_2__ dptr; int flags; } ;
struct nvme_iod {int dma_len; int first_dma; } ;
struct nvme_dev {int dev; } ;
struct bio_vec {int bv_len; } ;
typedef int blk_status_t ;


 int BLK_STS_RESOURCE ;
 int NVME_CMD_SGL_METABUF ;
 int NVME_SGL_FMT_DATA_DESC ;
 struct nvme_iod* blk_mq_rq_to_pdu (struct request*) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int dma_map_bvec (int ,struct bio_vec*,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int rq_dma_dir (struct request*) ;

__attribute__((used)) static blk_status_t nvme_setup_sgl_simple(struct nvme_dev *dev,
  struct request *req, struct nvme_rw_command *cmnd,
  struct bio_vec *bv)
{
 struct nvme_iod *iod = blk_mq_rq_to_pdu(req);

 iod->first_dma = dma_map_bvec(dev->dev, bv, rq_dma_dir(req), 0);
 if (dma_mapping_error(dev->dev, iod->first_dma))
  return BLK_STS_RESOURCE;
 iod->dma_len = bv->bv_len;

 cmnd->flags = NVME_CMD_SGL_METABUF;
 cmnd->dptr.sgl.addr = cpu_to_le64(iod->first_dma);
 cmnd->dptr.sgl.length = cpu_to_le32(iod->dma_len);
 cmnd->dptr.sgl.type = NVME_SGL_FMT_DATA_DESC << 4;
 return 0;
}
