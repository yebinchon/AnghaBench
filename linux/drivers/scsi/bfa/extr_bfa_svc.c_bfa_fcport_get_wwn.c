
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn_t ;
struct bfa_s {int dummy; } ;
struct bfa_fcport_s {int pwwn; int nwwn; } ;
typedef scalar_t__ bfa_boolean_t ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (struct bfa_s*) ;

wwn_t
bfa_fcport_get_wwn(struct bfa_s *bfa, bfa_boolean_t node)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);
 if (node)
  return fcport->nwwn;
 else
  return fcport->pwwn;
}
