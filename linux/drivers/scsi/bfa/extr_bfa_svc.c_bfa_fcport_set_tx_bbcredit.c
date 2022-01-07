
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct bfa_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ tx_bbcredit; } ;
struct bfa_fcport_s {TYPE_1__ cfg; } ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (struct bfa_s*) ;

void
bfa_fcport_set_tx_bbcredit(struct bfa_s *bfa, u16 tx_bbcredit)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);

 fcport->cfg.tx_bbcredit = (u8)tx_bbcredit;
}
