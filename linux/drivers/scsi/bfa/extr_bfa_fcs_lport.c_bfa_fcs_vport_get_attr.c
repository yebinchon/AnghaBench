
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_vport_attr_s {int vport_state; int port_attr; } ;
struct bfa_fcs_vport_s {int sm; int lport; } ;


 int bfa_fcs_lport_get_attr (int *,int *) ;
 int bfa_sm_to_state (int ,int ) ;
 int memset (struct bfa_vport_attr_s*,int ,int) ;
 int vport_sm_table ;

void
bfa_fcs_vport_get_attr(struct bfa_fcs_vport_s *vport,
   struct bfa_vport_attr_s *attr)
{
 if (vport == ((void*)0) || attr == ((void*)0))
  return;

 memset(attr, 0, sizeof(struct bfa_vport_attr_s));

 bfa_fcs_lport_get_attr(&vport->lport, &attr->port_attr);
 attr->vport_state = bfa_sm_to_state(vport_sm_table, vport->sm);
}
