
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_lnode {int dummy; } ;


 int CSIO_LNE_LINK_DOWN ;
 int csio_post_event_lns (struct csio_lnode*,int ) ;

__attribute__((used)) static void
csio_ln_down(struct csio_lnode *ln)
{
 csio_post_event_lns(ln, CSIO_LNE_LINK_DOWN);
}
