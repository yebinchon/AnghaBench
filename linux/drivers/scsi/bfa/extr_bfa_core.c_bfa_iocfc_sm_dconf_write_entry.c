
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocfc_s {int bfa; } ;


 int bfa_dconf_modexit (int ) ;

__attribute__((used)) static void
bfa_iocfc_sm_dconf_write_entry(struct bfa_iocfc_s *iocfc)
{
 bfa_dconf_modexit(iocfc->bfa);
}
