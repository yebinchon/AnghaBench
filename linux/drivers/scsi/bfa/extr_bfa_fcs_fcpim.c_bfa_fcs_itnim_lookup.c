
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn_t ;
struct bfa_fcs_rport_s {struct bfa_fcs_itnim_s* itnim; } ;
struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_fcs_itnim_s {int dummy; } ;


 int WARN_ON (int ) ;
 struct bfa_fcs_rport_s* bfa_fcs_rport_lookup (struct bfa_fcs_lport_s*,int ) ;

struct bfa_fcs_itnim_s *
bfa_fcs_itnim_lookup(struct bfa_fcs_lport_s *port, wwn_t rpwwn)
{
 struct bfa_fcs_rport_s *rport;
 rport = bfa_fcs_rport_lookup(port, rpwwn);

 if (!rport)
  return ((void*)0);

 WARN_ON(rport->itnim == ((void*)0));
 return rport->itnim;
}
