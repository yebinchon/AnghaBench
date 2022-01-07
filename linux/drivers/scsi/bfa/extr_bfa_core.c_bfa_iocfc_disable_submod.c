
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ submod_enabled; } ;
struct bfa_s {TYPE_1__ iocfc; } ;


 scalar_t__ BFA_FALSE ;
 int bfa_dconf_iocdisable (struct bfa_s*) ;
 int bfa_fcdiag_iocdisable (struct bfa_s*) ;
 int bfa_fcp_iocdisable (struct bfa_s*) ;
 int bfa_fcport_iocdisable (struct bfa_s*) ;
 int bfa_fcxp_iocdisable (struct bfa_s*) ;
 int bfa_lps_iocdisable (struct bfa_s*) ;
 int bfa_rport_iocdisable (struct bfa_s*) ;

__attribute__((used)) static void
bfa_iocfc_disable_submod(struct bfa_s *bfa)
{
 if (bfa->iocfc.submod_enabled == BFA_FALSE)
  return;

 bfa_fcdiag_iocdisable(bfa);
 bfa_fcport_iocdisable(bfa);
 bfa_fcxp_iocdisable(bfa);
 bfa_lps_iocdisable(bfa);
 bfa_rport_iocdisable(bfa);
 bfa_fcp_iocdisable(bfa);
 bfa_dconf_iocdisable(bfa);

 bfa->iocfc.submod_enabled = BFA_FALSE;
}
