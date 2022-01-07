
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct fc_lport {int port_id; TYPE_1__* host; } ;
struct fc_exch_pool {int lock; } ;
struct fc_exch_mgr {scalar_t__ min_xid; scalar_t__ max_xid; int pool; struct fc_lport* lport; } ;
struct fc_exch {scalar_t__ xid; } ;
struct TYPE_2__ {int host_no; } ;


 int FC_LPORT_DBG (struct fc_lport*,char*,scalar_t__) ;
 scalar_t__ FC_XID_UNKNOWN ;
 int WARN_ON (int) ;
 int cpu_possible (scalar_t__) ;
 scalar_t__ fc_cpu_mask ;
 scalar_t__ fc_cpu_order ;
 int fc_exch_hold (struct fc_exch*) ;
 struct fc_exch* fc_exch_ptr_get (struct fc_exch_pool*,scalar_t__) ;
 struct fc_exch fc_quarantine_exch ;
 scalar_t__ nr_cpu_ids ;
 struct fc_exch_pool* per_cpu_ptr (int ,scalar_t__) ;
 int pr_err (char*,int ,int ,scalar_t__,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct fc_exch *fc_exch_find(struct fc_exch_mgr *mp, u16 xid)
{
 struct fc_lport *lport = mp->lport;
 struct fc_exch_pool *pool;
 struct fc_exch *ep = ((void*)0);
 u16 cpu = xid & fc_cpu_mask;

 if (xid == FC_XID_UNKNOWN)
  return ((void*)0);

 if (cpu >= nr_cpu_ids || !cpu_possible(cpu)) {
  pr_err("host%u: lport %6.6x: xid %d invalid CPU %d\n:",
         lport->host->host_no, lport->port_id, xid, cpu);
  return ((void*)0);
 }

 if ((xid >= mp->min_xid) && (xid <= mp->max_xid)) {
  pool = per_cpu_ptr(mp->pool, cpu);
  spin_lock_bh(&pool->lock);
  ep = fc_exch_ptr_get(pool, (xid - mp->min_xid) >> fc_cpu_order);
  if (ep == &fc_quarantine_exch) {
   FC_LPORT_DBG(lport, "xid %x quarantined\n", xid);
   ep = ((void*)0);
  }
  if (ep) {
   WARN_ON(ep->xid != xid);
   fc_exch_hold(ep);
  }
  spin_unlock_bh(&pool->lock);
 }
 return ep;
}
