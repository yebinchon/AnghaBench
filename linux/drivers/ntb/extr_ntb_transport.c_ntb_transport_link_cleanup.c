
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ntb_transport_qp {int link_work; int link_cleanup; } ;
struct ntb_transport_ctx {int qp_bitmap; int qp_bitmap_free; unsigned int qp_count; unsigned int mw_count; int ndev; int link_work; int link_is_up; struct ntb_transport_qp* qp_vec; } ;


 int BIT_ULL (unsigned int) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int ntb_free_mw (struct ntb_transport_ctx*,unsigned int) ;
 int ntb_qp_link_cleanup (struct ntb_transport_qp*) ;
 unsigned int ntb_spad_count (int ) ;
 int ntb_spad_write (int ,unsigned int,int ) ;

__attribute__((used)) static void ntb_transport_link_cleanup(struct ntb_transport_ctx *nt)
{
 struct ntb_transport_qp *qp;
 u64 qp_bitmap_alloc;
 unsigned int i, count;

 qp_bitmap_alloc = nt->qp_bitmap & ~nt->qp_bitmap_free;


 for (i = 0; i < nt->qp_count; i++)
  if (qp_bitmap_alloc & BIT_ULL(i)) {
   qp = &nt->qp_vec[i];
   ntb_qp_link_cleanup(qp);
   cancel_work_sync(&qp->link_cleanup);
   cancel_delayed_work_sync(&qp->link_work);
  }

 if (!nt->link_is_up)
  cancel_delayed_work_sync(&nt->link_work);

 for (i = 0; i < nt->mw_count; i++)
  ntb_free_mw(nt, i);





 count = ntb_spad_count(nt->ndev);
 for (i = 0; i < count; i++)
  ntb_spad_write(nt->ndev, i, 0);
}
