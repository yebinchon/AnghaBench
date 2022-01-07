
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {int dummy; } ;
struct nvme_ns {int lba_shift; TYPE_1__* head; TYPE_2__* ctrl; } ;
struct TYPE_6__ {scalar_t__ control; int length; int slba; int nsid; int opcode; } ;
struct nvme_command {TYPE_3__ write_zeroes; } ;
typedef int blk_status_t ;
struct TYPE_5__ {int quirks; } ;
struct TYPE_4__ {int ns_id; } ;


 int BLK_STS_OK ;
 int NVME_QUIRK_DEALLOCATE_ZEROES ;
 int blk_rq_bytes (struct request*) ;
 int blk_rq_pos (struct request*) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int nvme_block_nr (struct nvme_ns*,int ) ;
 int nvme_cmd_write_zeroes ;
 int nvme_setup_discard (struct nvme_ns*,struct request*,struct nvme_command*) ;

__attribute__((used)) static inline blk_status_t nvme_setup_write_zeroes(struct nvme_ns *ns,
  struct request *req, struct nvme_command *cmnd)
{
 if (ns->ctrl->quirks & NVME_QUIRK_DEALLOCATE_ZEROES)
  return nvme_setup_discard(ns, req, cmnd);

 cmnd->write_zeroes.opcode = nvme_cmd_write_zeroes;
 cmnd->write_zeroes.nsid = cpu_to_le32(ns->head->ns_id);
 cmnd->write_zeroes.slba =
  cpu_to_le64(nvme_block_nr(ns, blk_rq_pos(req)));
 cmnd->write_zeroes.length =
  cpu_to_le16((blk_rq_bytes(req) >> ns->lba_shift) - 1);
 cmnd->write_zeroes.control = 0;
 return BLK_STS_OK;
}
