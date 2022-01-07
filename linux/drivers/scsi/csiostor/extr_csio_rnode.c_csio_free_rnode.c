
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_rnode {int lnp; } ;
struct csio_hw {int rnode_mempool; } ;


 int CSIO_INC_STATS (int ,int ) ;
 struct csio_hw* csio_lnode_to_hw (int ) ;
 int csio_rnode_exit (struct csio_rnode*) ;
 int csio_rnode_to_lnode (struct csio_rnode*) ;
 int mempool_free (struct csio_rnode*,int ) ;
 int n_rnode_free ;

__attribute__((used)) static void
csio_free_rnode(struct csio_rnode *rn)
{
 struct csio_hw *hw = csio_lnode_to_hw(csio_rnode_to_lnode(rn));

 csio_rnode_exit(rn);
 CSIO_INC_STATS(rn->lnp, n_rnode_free);
 mempool_free(rn, hw->rnode_mempool);
}
