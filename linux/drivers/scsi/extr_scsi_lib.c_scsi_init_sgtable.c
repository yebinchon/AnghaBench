
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nents; int sgl; } ;
struct scsi_data_buffer {int length; TYPE_1__ table; } ;
struct request {int q; } ;
typedef int blk_status_t ;


 int BLK_STS_OK ;
 int BLK_STS_RESOURCE ;
 int BUG_ON (int) ;
 int SCSI_INLINE_SG_CNT ;
 int blk_rq_map_sg (int ,struct request*,int ) ;
 int blk_rq_nr_phys_segments (struct request*) ;
 int blk_rq_payload_bytes (struct request*) ;
 int sg_alloc_table_chained (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static blk_status_t scsi_init_sgtable(struct request *req,
  struct scsi_data_buffer *sdb)
{
 int count;




 if (unlikely(sg_alloc_table_chained(&sdb->table,
   blk_rq_nr_phys_segments(req), sdb->table.sgl,
   SCSI_INLINE_SG_CNT)))
  return BLK_STS_RESOURCE;





 count = blk_rq_map_sg(req->q, req, sdb->table.sgl);
 BUG_ON(count > sdb->table.nents);
 sdb->table.nents = count;
 sdb->length = blk_rq_payload_bytes(req);
 return BLK_STS_OK;
}
