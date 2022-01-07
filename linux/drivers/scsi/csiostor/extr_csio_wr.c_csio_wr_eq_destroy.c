
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_mb {int dummy; } ;
struct csio_hw {int mb_mempool; int pfn; } ;
struct csio_eq_params {int eqid; scalar_t__ vfn; int pfn; } ;


 int CSIO_MB_DEFAULT_TMO ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int csio_mb_eq_ofld_free (struct csio_hw*,struct csio_mb*,void*,int ,struct csio_eq_params*,void (*) (struct csio_hw*,struct csio_mb*)) ;
 int csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 int csio_q_eqid (struct csio_hw*,int) ;
 int csio_wr_eq_destroy_rsp (struct csio_hw*,struct csio_mb*,int) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int memset (struct csio_eq_params*,int ,int) ;

__attribute__((used)) static int
csio_wr_eq_destroy(struct csio_hw *hw, void *priv, int eq_idx,
     void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
 int rv = 0;
 struct csio_mb *mbp;
 struct csio_eq_params eqp;

 memset(&eqp, 0, sizeof(struct csio_eq_params));

 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp)
  return -ENOMEM;

 eqp.pfn = hw->pfn;
 eqp.vfn = 0;
 eqp.eqid = csio_q_eqid(hw, eq_idx);

 csio_mb_eq_ofld_free(hw, mbp, priv, CSIO_MB_DEFAULT_TMO, &eqp, cbfn);

 rv = csio_mb_issue(hw, mbp);
 if (rv != 0) {
  mempool_free(mbp, hw->mb_mempool);
  return rv;
 }

 if (cbfn != ((void*)0))
  return 0;

 return csio_wr_eq_destroy_rsp(hw, mbp, eq_idx);
}
