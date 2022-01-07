
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct csio_q {scalar_t__ pidx; scalar_t__ credits; int inc_idx; } ;
struct csio_hw {int dummy; } ;


 int CSIO_INC_STATS (struct csio_q*,int ) ;
 int n_flq_refill ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void
csio_wr_update_fl(struct csio_hw *hw, struct csio_q *flq, uint16_t n)
{

 flq->inc_idx += n;
 flq->pidx += n;
 if (unlikely(flq->pidx >= flq->credits))
  flq->pidx -= (uint16_t)flq->credits;

 CSIO_INC_STATS(flq, n_flq_refill);
}
