
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flid; } ;
struct TYPE_4__ {TYPE_1__ fl; } ;
struct csio_q {int inc_idx; TYPE_2__ un; } ;
struct csio_hw {int dummy; } ;


 int DBPRIO_F ;
 int DBTYPE_F ;
 int MYPF_REG (int ) ;
 int PIDX_T5_V (int) ;
 int QID_V (int ) ;
 int SGE_PF_KDOORBELL_A ;
 int csio_wr_reg32 (struct csio_hw*,int,int ) ;

__attribute__((used)) static inline void
csio_wr_ring_fldb(struct csio_hw *hw, struct csio_q *flq)
{





 if (flq->inc_idx >= 8) {
  csio_wr_reg32(hw, DBPRIO_F | QID_V(flq->un.fl.flid) |
      PIDX_T5_V(flq->inc_idx / 8) | DBTYPE_F,
      MYPF_REG(SGE_PF_KDOORBELL_A));
  flq->inc_idx &= 7;
 }
}
