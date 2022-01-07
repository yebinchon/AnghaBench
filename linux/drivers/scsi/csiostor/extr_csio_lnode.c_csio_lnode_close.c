
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_lnode {int vnp_flowid; } ;


 int CSIO_INVALID_IDX ;
 int CSIO_LNE_CLOSE ;
 scalar_t__ csio_is_phys_ln (struct csio_lnode*) ;
 int csio_ln_dbg (struct csio_lnode*,char*,struct csio_lnode*) ;
 int csio_post_event_lns (struct csio_lnode*,int ) ;

void
csio_lnode_close(struct csio_lnode *ln)
{
 csio_post_event_lns(ln, CSIO_LNE_CLOSE);
 if (csio_is_phys_ln(ln))
  ln->vnp_flowid = CSIO_INVALID_IDX;

 csio_ln_dbg(ln, "closed ln :%p\n", ln);
}
