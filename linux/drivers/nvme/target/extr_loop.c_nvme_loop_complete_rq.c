
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nvme_loop_iod {int sg_table; } ;


 int SG_CHUNK_SIZE ;
 struct nvme_loop_iod* blk_mq_rq_to_pdu (struct request*) ;
 int nvme_cleanup_cmd (struct request*) ;
 int nvme_complete_rq (struct request*) ;
 int sg_free_table_chained (int *,int ) ;

__attribute__((used)) static void nvme_loop_complete_rq(struct request *req)
{
 struct nvme_loop_iod *iod = blk_mq_rq_to_pdu(req);

 nvme_cleanup_cmd(req);
 sg_free_table_chained(&iod->sg_table, SG_CHUNK_SIZE);
 nvme_complete_rq(req);
}
