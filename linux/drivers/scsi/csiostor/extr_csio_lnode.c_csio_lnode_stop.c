
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_lnode {int flags; } ;


 int CSIO_LNE_DOWN_LINK ;
 int CSIO_LNF_LINK_ENABLE ;
 int csio_fcoe_enable_link (struct csio_lnode*,int ) ;
 scalar_t__ csio_is_phys_ln (struct csio_lnode*) ;
 int csio_ln_dbg (struct csio_lnode*,char*,struct csio_lnode*) ;
 int csio_post_event_lns (struct csio_lnode*,int ) ;

void
csio_lnode_stop(struct csio_lnode *ln)
{
 csio_post_event_lns(ln, CSIO_LNE_DOWN_LINK);
 if (csio_is_phys_ln(ln) && (ln->flags & CSIO_LNF_LINK_ENABLE)) {
  csio_fcoe_enable_link(ln, 0);
  ln->flags &= ~CSIO_LNF_LINK_ENABLE;
 }
 csio_ln_dbg(ln, "stopping ln :%p\n", ln);
}
