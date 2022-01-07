
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csio_rnode {int flowid; } ;
struct csio_lnode {int dummy; } ;


 struct csio_rnode* csio_alloc_rnode (struct csio_lnode*) ;
 struct csio_rnode* csio_rn_lookup (struct csio_lnode*,int ) ;

__attribute__((used)) static struct csio_rnode *
csio_get_rnode(struct csio_lnode *ln, uint32_t flowid)
{
 struct csio_rnode *rn;

 rn = csio_rn_lookup(ln, flowid);
 if (!rn) {
  rn = csio_alloc_rnode(ln);
  if (!rn)
   return ((void*)0);

  rn->flowid = flowid;
 }

 return rn;
}
