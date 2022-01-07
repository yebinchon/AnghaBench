
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_mb {int dummy; } ;
struct csio_iq_params {int fl0id; int fl1id; int type; int iqid; scalar_t__ vfn; int pfn; } ;
struct csio_hw {int mb_mempool; int pfn; } ;


 int CSIO_MB_DEFAULT_TMO ;
 int ENOMEM ;
 int FW_IQ_TYPE_FL_INT_CAP ;
 int GFP_ATOMIC ;
 int csio_mb_iq_free (struct csio_hw*,struct csio_mb*,void*,int ,struct csio_iq_params*,void (*) (struct csio_hw*,struct csio_mb*)) ;
 int csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 int csio_q_flid (struct csio_hw*,int) ;
 int csio_q_iq_flq_idx (struct csio_hw*,int) ;
 int csio_q_iqid (struct csio_hw*,int) ;
 int csio_wr_iq_destroy_rsp (struct csio_hw*,struct csio_mb*,int) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int memset (struct csio_iq_params*,int ,int) ;

__attribute__((used)) static int
csio_wr_iq_destroy(struct csio_hw *hw, void *priv, int iq_idx,
     void (*cbfn)(struct csio_hw *, struct csio_mb *))
{
 int rv = 0;
 struct csio_mb *mbp;
 struct csio_iq_params iqp;
 int flq_idx;

 memset(&iqp, 0, sizeof(struct csio_iq_params));

 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp)
  return -ENOMEM;

 iqp.pfn = hw->pfn;
 iqp.vfn = 0;
 iqp.iqid = csio_q_iqid(hw, iq_idx);
 iqp.type = FW_IQ_TYPE_FL_INT_CAP;

 flq_idx = csio_q_iq_flq_idx(hw, iq_idx);
 if (flq_idx != -1)
  iqp.fl0id = csio_q_flid(hw, flq_idx);
 else
  iqp.fl0id = 0xFFFF;

 iqp.fl1id = 0xFFFF;

 csio_mb_iq_free(hw, mbp, priv, CSIO_MB_DEFAULT_TMO, &iqp, cbfn);

 rv = csio_mb_issue(hw, mbp);
 if (rv != 0) {
  mempool_free(mbp, hw->mb_mempool);
  return rv;
 }

 if (cbfn != ((void*)0))
  return 0;

 return csio_wr_iq_destroy_rsp(hw, mbp, iq_idx);
}
