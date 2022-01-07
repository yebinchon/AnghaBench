
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_q {scalar_t__ cidx; scalar_t__ credits; } ;
struct csio_hw {int dummy; } ;


 int CSIO_INC_STATS (struct csio_q*,int ) ;
 int n_qwrap ;

__attribute__((used)) static inline void
csio_wr_inval_flq_buf(struct csio_hw *hw, struct csio_q *flq)
{
 flq->cidx++;
 if (flq->cidx == flq->credits) {
  flq->cidx = 0;
  CSIO_INC_STATS(flq, n_qwrap);
 }
}
