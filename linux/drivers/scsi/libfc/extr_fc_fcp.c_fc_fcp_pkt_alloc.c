
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_lport {int stats; } ;
struct fc_fcp_pkt {int scsi_pkt_lock; int list; int timer; int ref_cnt; int xfer_ddp; struct fc_lport* lp; } ;
struct fc_fcp_internal {int scsi_pkt_pool; } ;
typedef int gfp_t ;
struct TYPE_2__ {int FcpPktAllocFails; } ;


 int FC_XID_UNKNOWN ;
 int INIT_LIST_HEAD (int *) ;
 struct fc_fcp_internal* fc_get_scsi_internal (struct fc_lport*) ;
 int get_cpu () ;
 struct fc_fcp_pkt* mempool_alloc (int ,int ) ;
 int memset (struct fc_fcp_pkt*,int ,int) ;
 TYPE_1__* per_cpu_ptr (int ,int ) ;
 int put_cpu () ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int *,int ) ;

__attribute__((used)) static struct fc_fcp_pkt *fc_fcp_pkt_alloc(struct fc_lport *lport, gfp_t gfp)
{
 struct fc_fcp_internal *si = fc_get_scsi_internal(lport);
 struct fc_fcp_pkt *fsp;

 fsp = mempool_alloc(si->scsi_pkt_pool, gfp);
 if (fsp) {
  memset(fsp, 0, sizeof(*fsp));
  fsp->lp = lport;
  fsp->xfer_ddp = FC_XID_UNKNOWN;
  refcount_set(&fsp->ref_cnt, 1);
  timer_setup(&fsp->timer, ((void*)0), 0);
  INIT_LIST_HEAD(&fsp->list);
  spin_lock_init(&fsp->scsi_pkt_lock);
 } else {
  per_cpu_ptr(lport->stats, get_cpu())->FcpPktAllocFails++;
  put_cpu();
 }
 return fsp;
}
