
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_rnode {int dummy; } ;
struct csio_lnode {int dummy; } ;
struct csio_hw {int rnode_mempool; } ;


 int CSIO_INC_STATS (struct csio_lnode*,int ) ;
 int GFP_ATOMIC ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 scalar_t__ csio_rnode_init (struct csio_rnode*,struct csio_lnode*) ;
 struct csio_rnode* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_rnode*,int ) ;
 int memset (struct csio_rnode*,int ,int) ;
 int n_rnode_alloc ;
 int n_rnode_nomem ;

__attribute__((used)) static struct csio_rnode *
csio_alloc_rnode(struct csio_lnode *ln)
{
 struct csio_hw *hw = csio_lnode_to_hw(ln);

 struct csio_rnode *rn = mempool_alloc(hw->rnode_mempool, GFP_ATOMIC);
 if (!rn)
  goto err;

 memset(rn, 0, sizeof(struct csio_rnode));
 if (csio_rnode_init(rn, ln))
  goto err_free;

 CSIO_INC_STATS(ln, n_rnode_alloc);

 return rn;

err_free:
 mempool_free(rn, hw->rnode_mempool);
err:
 CSIO_INC_STATS(ln, n_rnode_nomem);
 return ((void*)0);
}
