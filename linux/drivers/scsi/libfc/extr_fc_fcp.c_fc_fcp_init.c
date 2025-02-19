
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fcp_abort_io; scalar_t__ fcp_cleanup; scalar_t__ fcp_cmd_send; } ;
struct fc_lport {TYPE_2__* host; struct fc_fcp_internal* scsi_priv; TYPE_1__ tt; } ;
struct fc_fcp_internal {int scsi_pkt_pool; int scsi_queue_lock; int scsi_pkt_queue; int max_can_queue; } ;
struct TYPE_4__ {int can_queue; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ fc_fcp_abort_io ;
 scalar_t__ fc_fcp_cleanup ;
 scalar_t__ fc_fcp_cmd_send ;
 int kfree (struct fc_fcp_internal*) ;
 struct fc_fcp_internal* kzalloc (int,int ) ;
 int mempool_create_slab_pool (int,int ) ;
 int scsi_pkt_cachep ;
 int spin_lock_init (int *) ;

int fc_fcp_init(struct fc_lport *lport)
{
 int rc;
 struct fc_fcp_internal *si;

 if (!lport->tt.fcp_cmd_send)
  lport->tt.fcp_cmd_send = fc_fcp_cmd_send;

 if (!lport->tt.fcp_cleanup)
  lport->tt.fcp_cleanup = fc_fcp_cleanup;

 if (!lport->tt.fcp_abort_io)
  lport->tt.fcp_abort_io = fc_fcp_abort_io;

 si = kzalloc(sizeof(struct fc_fcp_internal), GFP_KERNEL);
 if (!si)
  return -ENOMEM;
 lport->scsi_priv = si;
 si->max_can_queue = lport->host->can_queue;
 INIT_LIST_HEAD(&si->scsi_pkt_queue);
 spin_lock_init(&si->scsi_queue_lock);

 si->scsi_pkt_pool = mempool_create_slab_pool(2, scsi_pkt_cachep);
 if (!si->scsi_pkt_pool) {
  rc = -ENOMEM;
  goto free_internal;
 }
 return 0;

free_internal:
 kfree(si);
 return rc;
}
