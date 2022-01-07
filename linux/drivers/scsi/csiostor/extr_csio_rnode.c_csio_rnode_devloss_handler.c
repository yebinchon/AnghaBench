
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_rnode {int sm; } ;
struct csio_lnode {int dummy; } ;


 int CSIO_RNFE_CLOSE ;
 scalar_t__ csio_is_rnode_ready (struct csio_rnode*) ;
 scalar_t__ csio_is_rnode_uninit (struct csio_rnode*) ;
 int csio_post_event (int *,int ) ;
 int csio_put_rnode (struct csio_lnode*,struct csio_rnode*) ;
 struct csio_lnode* csio_rnode_to_lnode (struct csio_rnode*) ;

void
csio_rnode_devloss_handler(struct csio_rnode *rn)
{
 struct csio_lnode *ln = csio_rnode_to_lnode(rn);


 if (csio_is_rnode_ready(rn))
  return;

 csio_post_event(&rn->sm, CSIO_RNFE_CLOSE);


 if (csio_is_rnode_uninit(rn))
  csio_put_rnode(ln, rn);
}
