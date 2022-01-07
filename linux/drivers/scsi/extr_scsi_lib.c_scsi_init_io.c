
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nents; int sgl; } ;
struct scsi_data_buffer {TYPE_1__ table; } ;
struct scsi_cmnd {struct scsi_data_buffer* prot_sdb; int sdb; struct request* request; } ;
struct request {int q; int bio; } ;
typedef scalar_t__ blk_status_t ;


 scalar_t__ BLK_STS_IOERR ;
 scalar_t__ BLK_STS_OK ;
 scalar_t__ BLK_STS_RESOURCE ;
 int BUG_ON (int) ;
 int SCSI_INLINE_PROT_SG_CNT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ blk_integrity_rq (struct request*) ;
 int blk_rq_count_integrity_sg (int ,int ) ;
 int blk_rq_map_integrity_sg (int ,int ,int ) ;
 int blk_rq_nr_phys_segments (struct request*) ;
 int queue_max_integrity_segments (int ) ;
 scalar_t__ scsi_init_sgtable (struct request*,int *) ;
 int scsi_mq_free_sgtables (struct scsi_cmnd*) ;
 scalar_t__ sg_alloc_table_chained (TYPE_1__*,int,int ,int ) ;

blk_status_t scsi_init_io(struct scsi_cmnd *cmd)
{
 struct request *rq = cmd->request;
 blk_status_t ret;

 if (WARN_ON_ONCE(!blk_rq_nr_phys_segments(rq)))
  return BLK_STS_IOERR;

 ret = scsi_init_sgtable(rq, &cmd->sdb);
 if (ret)
  return ret;

 if (blk_integrity_rq(rq)) {
  struct scsi_data_buffer *prot_sdb = cmd->prot_sdb;
  int ivecs, count;

  if (WARN_ON_ONCE(!prot_sdb)) {





   ret = BLK_STS_IOERR;
   goto out_free_sgtables;
  }

  ivecs = blk_rq_count_integrity_sg(rq->q, rq->bio);

  if (sg_alloc_table_chained(&prot_sdb->table, ivecs,
    prot_sdb->table.sgl,
    SCSI_INLINE_PROT_SG_CNT)) {
   ret = BLK_STS_RESOURCE;
   goto out_free_sgtables;
  }

  count = blk_rq_map_integrity_sg(rq->q, rq->bio,
      prot_sdb->table.sgl);
  BUG_ON(count > ivecs);
  BUG_ON(count > queue_max_integrity_segments(rq->q));

  cmd->prot_sdb = prot_sdb;
  cmd->prot_sdb->table.nents = count;
 }

 return BLK_STS_OK;
out_free_sgtables:
 scsi_mq_free_sgtables(cmd);
 return ret;
}
