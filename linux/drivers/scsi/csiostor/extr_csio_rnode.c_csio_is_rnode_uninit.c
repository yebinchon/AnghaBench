
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_rnode {int dummy; } ;


 int csio_match_state (struct csio_rnode*,int ) ;
 int csio_rns_uninit ;

__attribute__((used)) static int
csio_is_rnode_uninit(struct csio_rnode *rn)
{
 return csio_match_state(rn, csio_rns_uninit);
}
