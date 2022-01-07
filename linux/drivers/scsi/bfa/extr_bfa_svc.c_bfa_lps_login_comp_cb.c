
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_lps_s {int status; int uarg; TYPE_1__* bfa; scalar_t__ fdisc; } ;
typedef int bfa_boolean_t ;
struct TYPE_2__ {int bfad; } ;


 int bfa_cb_lps_fdisc_comp (int ,int ,int ) ;
 int bfa_cb_lps_flogi_comp (int ,int ,int ) ;

__attribute__((used)) static void
bfa_lps_login_comp_cb(void *arg, bfa_boolean_t complete)
{
 struct bfa_lps_s *lps = arg;

 if (!complete)
  return;

 if (lps->fdisc)
  bfa_cb_lps_fdisc_comp(lps->bfa->bfad, lps->uarg, lps->status);
 else
  bfa_cb_lps_flogi_comp(lps->bfa->bfad, lps->uarg, lps->status);
}
