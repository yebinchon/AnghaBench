
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_mb {int dummy; } ;
struct csio_lnode {int vnp_flowid; int fcf_flowid; struct csio_hw* hwp; } ;
struct csio_hw {int mb_mempool; } ;


 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int CSIO_MB_DEFAULT_TMO ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int csio_err (struct csio_hw*,char*) ;
 int csio_fcoe_vnp_read_init_mb (struct csio_lnode*,struct csio_mb*,int ,int ,int ,void (*) (struct csio_hw*,struct csio_mb*)) ;
 scalar_t__ csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int n_err_nomem ;

__attribute__((used)) static int
csio_ln_vnp_read(struct csio_lnode *ln,
  void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
 struct csio_hw *hw = ln->hwp;
 struct csio_mb *mbp;


 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp) {
  CSIO_INC_STATS(hw, n_err_nomem);
  return -ENOMEM;
 }


 csio_fcoe_vnp_read_init_mb(ln, mbp,
        CSIO_MB_DEFAULT_TMO,
        ln->fcf_flowid,
        ln->vnp_flowid,
        cbfn);


 if (csio_mb_issue(hw, mbp)) {
  csio_err(hw, "Failed to issue mbox FCoE VNP command\n");
  mempool_free(mbp, hw->mb_mempool);
  return -EINVAL;
 }

 return 0;
}
