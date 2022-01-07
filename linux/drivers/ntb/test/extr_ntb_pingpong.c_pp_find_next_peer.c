
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pp_ctx {int nmask; int pmask; int out_pidx; int out_db; int lock; int ntb; } ;


 int BIT_ULL (int) ;
 int ENODEV ;
 int __ffs64 (int) ;
 int ntb_link_is_up (int ,int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pp_find_next_peer(struct pp_ctx *pp)
{
 u64 link, out_db;
 int pidx;

 link = ntb_link_is_up(pp->ntb, ((void*)0), ((void*)0));


 if (link & pp->nmask) {
  pidx = __ffs64(link & pp->nmask);
  out_db = BIT_ULL(pidx + 1);
 } else if (link & pp->pmask) {
  pidx = __ffs64(link & pp->pmask);
  out_db = BIT_ULL(pidx);
 } else {
  return -ENODEV;
 }

 spin_lock(&pp->lock);
 pp->out_pidx = pidx;
 pp->out_db = out_db;
 spin_unlock(&pp->lock);

 return 0;
}
