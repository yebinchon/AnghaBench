
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bfa_s {int dummy; } ;
struct TYPE_2__ {int faa_state; } ;
struct bfa_fcport_s {TYPE_1__ cfg; } ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (struct bfa_s*) ;
 int bfa_trc (struct bfa_s*,int ) ;

void
bfa_fcport_cfg_faa(struct bfa_s *bfa, u8 state)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);

 bfa_trc(bfa, state);
 fcport->cfg.faa_state = state;
}
