
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct csio_mb {int dummy; } ;
struct csio_hw {int mb_mempool; int pfn; } ;
struct csio_eq_params {int eqstart; int eqsize; int eqaddr; int pciechn; scalar_t__ cidxfthresh; int fbmax; int fbmin; int iqid; int hostfcmode; scalar_t__ vfn; int pfn; } ;


 int CSIO_MB_DEFAULT_TMO ;
 int CSIO_QCREDIT_SZ ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int X_FETCHBURSTMAX_512B ;
 int X_FETCHBURSTMIN_64B ;
 int X_HOSTFCMODE_STATUS_PAGE ;
 int csio_err (struct csio_hw*,char*) ;
 int csio_mb_eq_ofld_alloc_write (struct csio_hw*,struct csio_mb*,void*,int ,struct csio_eq_params*,void (*) (struct csio_hw*,struct csio_mb*)) ;
 scalar_t__ csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 int csio_q_iqid (struct csio_hw*,int) ;
 int csio_q_pstart (struct csio_hw*,int) ;
 int csio_q_size (struct csio_hw*,int) ;
 int csio_wr_eq_cfg_rsp (struct csio_hw*,struct csio_mb*,int) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int memset (struct csio_eq_params*,int ,int) ;

int
csio_wr_eq_create(struct csio_hw *hw, void *priv, int eq_idx,
    int iq_idx, uint8_t portid,
    void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
 struct csio_mb *mbp;
 struct csio_eq_params eqp;

 memset(&eqp, 0, sizeof(struct csio_eq_params));

 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp) {
  csio_err(hw, "EQ command out of memory!\n");
  return -ENOMEM;
 }

 eqp.pfn = hw->pfn;
 eqp.vfn = 0;
 eqp.eqstart = 1;
 eqp.hostfcmode = X_HOSTFCMODE_STATUS_PAGE;
 eqp.iqid = csio_q_iqid(hw, iq_idx);
 eqp.fbmin = X_FETCHBURSTMIN_64B;
 eqp.fbmax = X_FETCHBURSTMAX_512B;
 eqp.cidxfthresh = 0;
 eqp.pciechn = portid;
 eqp.eqsize = csio_q_size(hw, eq_idx) / CSIO_QCREDIT_SZ;
 eqp.eqaddr = csio_q_pstart(hw, eq_idx);

 csio_mb_eq_ofld_alloc_write(hw, mbp, priv, CSIO_MB_DEFAULT_TMO,
        &eqp, cbfn);

 if (csio_mb_issue(hw, mbp)) {
  csio_err(hw, "Issue of EQ OFLD cmd failed!\n");
  mempool_free(mbp, hw->mb_mempool);
  return -EINVAL;
 }

 if (cbfn != ((void*)0))
  return 0;

 return csio_wr_eq_cfg_rsp(hw, mbp, eq_idx);
}
