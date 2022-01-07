
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_vport {int dummy; } ;
struct csio_lnode {int flags; struct csio_lnode* pln; struct fc_vport* fc_vport; } ;


 int CSIO_LNF_NPIVSUPP ;
 int FC_VPORT_ACTIVE ;
 int FC_VPORT_LINKDOWN ;
 int FC_VPORT_NO_FABRIC_SUPP ;
 int csio_lnode_state_to_str (struct csio_lnode*,char*) ;
 int fc_vport_set_state (struct fc_vport*,int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
csio_vport_set_state(struct csio_lnode *ln)
{
 struct fc_vport *fc_vport = ln->fc_vport;
 struct csio_lnode *pln = ln->pln;
 char state[16];


 csio_lnode_state_to_str(pln, state);
 if (strcmp(state, "READY")) {
  fc_vport_set_state(fc_vport, FC_VPORT_LINKDOWN);
  return;
 }

 if (!(pln->flags & CSIO_LNF_NPIVSUPP)) {
  fc_vport_set_state(fc_vport, FC_VPORT_NO_FABRIC_SUPP);
  return;
 }


 csio_lnode_state_to_str(ln, state);
 if (strcmp(state, "READY")) {
  fc_vport_set_state(fc_vport, FC_VPORT_LINKDOWN);
  return;
 }
 fc_vport_set_state(fc_vport, FC_VPORT_ACTIVE);
}
