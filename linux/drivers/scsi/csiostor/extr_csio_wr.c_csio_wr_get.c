
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint32_t ;
typedef int uint16_t ;
struct csio_wrm {int free_qidx; struct csio_q** q_arr; } ;
struct csio_wr_pair {uintptr_t size1; uintptr_t size2; int * addr2; void* addr1; } ;
struct csio_qstatus_page {int cidx; } ;
struct csio_q {uintptr_t pidx; int cidx; int credits; int inc_idx; int * vstart; scalar_t__ vwrap; int * owner; } ;
struct csio_hw {int dummy; } ;


 uintptr_t ALIGN (uintptr_t,uintptr_t) ;
 int CSIO_DB_ASSERT (int) ;
 int CSIO_INC_STATS (struct csio_q*,int ) ;
 uintptr_t CSIO_QCREDIT_SZ ;
 int EBUSY ;
 struct csio_wrm* csio_hw_to_wrm (struct csio_hw*) ;
 int n_eq_wr_split ;
 int n_qempty ;
 int n_qfull ;
 int n_qwrap ;
 int n_tot_reqs ;
 int ntohs (int ) ;
 scalar_t__ unlikely (int) ;

int
csio_wr_get(struct csio_hw *hw, int qidx, uint32_t size,
     struct csio_wr_pair *wrp)
{
 struct csio_wrm *wrm = csio_hw_to_wrm(hw);
 struct csio_q *q = wrm->q_arr[qidx];
 void *cwr = (void *)((uintptr_t)(q->vstart) +
      (q->pidx * CSIO_QCREDIT_SZ));
 struct csio_qstatus_page *stp = (struct csio_qstatus_page *)q->vwrap;
 uint16_t cidx = q->cidx = ntohs(stp->cidx);
 uint16_t pidx = q->pidx;
 uint32_t req_sz = ALIGN(size, CSIO_QCREDIT_SZ);
 int req_credits = req_sz / CSIO_QCREDIT_SZ;
 int credits;

 CSIO_DB_ASSERT(q->owner != ((void*)0));
 CSIO_DB_ASSERT((qidx >= 0) && (qidx < wrm->free_qidx));
 CSIO_DB_ASSERT(cidx <= q->credits);


 if (pidx > cidx) {
  credits = q->credits - (pidx - cidx) - 1;
 } else if (cidx > pidx) {
  credits = cidx - pidx - 1;
 } else {

  credits = q->credits;
  CSIO_INC_STATS(q, n_qempty);
 }





 if (!credits || (req_credits > credits)) {
  CSIO_INC_STATS(q, n_qfull);
  return -EBUSY;
 }
 if (unlikely(((uintptr_t)cwr + req_sz) > (uintptr_t)(q->vwrap))) {
  wrp->addr1 = cwr;
  wrp->size1 = (uint32_t)((uintptr_t)q->vwrap - (uintptr_t)cwr);
  wrp->addr2 = q->vstart;
  wrp->size2 = req_sz - wrp->size1;
  q->pidx = (uint16_t)(ALIGN(wrp->size2, CSIO_QCREDIT_SZ) /
       CSIO_QCREDIT_SZ);
  CSIO_INC_STATS(q, n_qwrap);
  CSIO_INC_STATS(q, n_eq_wr_split);
 } else {
  wrp->addr1 = cwr;
  wrp->size1 = req_sz;
  wrp->addr2 = ((void*)0);
  wrp->size2 = 0;
  q->pidx += (uint16_t)req_credits;


  if (unlikely(q->pidx == q->credits)) {
   q->pidx = 0;
   CSIO_INC_STATS(q, n_qwrap);
  }
 }

 q->inc_idx = (uint16_t)req_credits;

 CSIO_INC_STATS(q, n_tot_reqs);

 return 0;
}
