
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocfc_s {int bfa; } ;


 int bfa_fcport_init (int ) ;
 int bfa_iocfc_start_submod (int ) ;

__attribute__((used)) static void
bfa_iocfc_sm_operational_entry(struct bfa_iocfc_s *iocfc)
{
 bfa_fcport_init(iocfc->bfa);
 bfa_iocfc_start_submod(iocfc->bfa);
}
