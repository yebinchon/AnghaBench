
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_rnode {int dummy; } ;
struct csio_lnode {int dummy; } ;


 int CSIO_DB_ASSERT (int) ;
 int csio_free_rnode (struct csio_rnode*) ;
 scalar_t__ csio_is_rnode_uninit (struct csio_rnode*) ;

void
csio_put_rnode(struct csio_lnode *ln, struct csio_rnode *rn)
{
 CSIO_DB_ASSERT(csio_is_rnode_uninit(rn) != 0);
 csio_free_rnode(rn);
}
