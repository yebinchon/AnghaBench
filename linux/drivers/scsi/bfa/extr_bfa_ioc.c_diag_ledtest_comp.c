
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_diag_ledtest_rsp_s {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct bfa_diag_s {TYPE_1__ ledtest; } ;


 int BFA_FALSE ;
 int bfa_trc (struct bfa_diag_s*,int ) ;

__attribute__((used)) static void
diag_ledtest_comp(struct bfa_diag_s *diag, struct bfi_diag_ledtest_rsp_s *msg)
{
 bfa_trc(diag, diag->ledtest.lock);
 diag->ledtest.lock = BFA_FALSE;

}
