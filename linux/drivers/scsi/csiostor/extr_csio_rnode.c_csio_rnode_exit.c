
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sm_list; } ;
struct csio_rnode {int host_cmpl_q; TYPE_1__ sm; } ;


 int CSIO_DB_ASSERT (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void
csio_rnode_exit(struct csio_rnode *rn)
{
 list_del_init(&rn->sm.sm_list);
 CSIO_DB_ASSERT(list_empty(&rn->host_cmpl_q));
}
