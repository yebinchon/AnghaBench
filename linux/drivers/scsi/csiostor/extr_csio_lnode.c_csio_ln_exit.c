
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_lnode {TYPE_1__* fcfinfo; } ;
struct TYPE_2__ {int kref; } ;


 int csio_cleanup_rns (struct csio_lnode*) ;
 scalar_t__ csio_fdmi_enable ;
 int csio_free_fcfinfo ;
 scalar_t__ csio_is_npiv_ln (struct csio_lnode*) ;
 int csio_ln_fdmi_exit (struct csio_lnode*) ;
 struct csio_lnode* csio_parent_lnode (struct csio_lnode*) ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void
csio_ln_exit(struct csio_lnode *ln)
{
 struct csio_lnode *pln;

 csio_cleanup_rns(ln);
 if (csio_is_npiv_ln(ln)) {
  pln = csio_parent_lnode(ln);
  kref_put(&pln->fcfinfo->kref, csio_free_fcfinfo);
 } else {
  kref_put(&ln->fcfinfo->kref, csio_free_fcfinfo);
  if (csio_fdmi_enable)
   csio_ln_fdmi_exit(ln);
 }
 ln->fcfinfo = ((void*)0);
}
