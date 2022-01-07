
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef uintptr_t uint32_t ;
struct csio_wrm {struct csio_q** q_arr; } ;
struct TYPE_3__ {int genbit; } ;
struct TYPE_4__ {TYPE_1__ iq; } ;
struct csio_q {uintptr_t credits; uintptr_t wr_sz; scalar_t__ vstart; TYPE_2__ un; } ;
struct csio_iqwr_footer {int dummy; } ;
struct csio_hw {int dummy; } ;


 struct csio_wrm* csio_hw_to_wrm (struct csio_hw*) ;
 int memset (struct csio_iqwr_footer*,int ,int) ;

__attribute__((used)) static void
csio_wr_cleanup_iq_ftr(struct csio_hw *hw, int qidx)
{
 struct csio_wrm *wrm = csio_hw_to_wrm(hw);
 struct csio_q *q = wrm->q_arr[qidx];
 void *wr;
 struct csio_iqwr_footer *ftr;
 uint32_t i = 0;


 q->un.iq.genbit = 1;

 for (i = 0; i < q->credits; i++) {

  wr = (void *)((uintptr_t)q->vstart +
        (i * q->wr_sz));

  ftr = (struct csio_iqwr_footer *)((uintptr_t)wr +
       (q->wr_sz - sizeof(*ftr)));

  memset(ftr, 0, sizeof(*ftr));
 }
}
