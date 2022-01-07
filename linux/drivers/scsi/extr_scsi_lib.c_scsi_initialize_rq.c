
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {scalar_t__ retries; int jiffies_at_alloc; int rcu; int req; } ;
struct request {int dummy; } ;


 struct scsi_cmnd* blk_mq_rq_to_pdu (struct request*) ;
 int init_rcu_head (int *) ;
 int jiffies ;
 int scsi_req_init (int *) ;

__attribute__((used)) static void scsi_initialize_rq(struct request *rq)
{
 struct scsi_cmnd *cmd = blk_mq_rq_to_pdu(rq);

 scsi_req_init(&cmd->req);
 init_rcu_head(&cmd->rcu);
 cmd->jiffies_at_alloc = jiffies;
 cmd->retries = 0;
}
