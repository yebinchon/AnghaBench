
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_dconf_mod_s {int dummy; } ;
typedef int bfa_status_t ;


 int BFA_DCONF_SM_FLASH_COMP ;
 int WARN_ON (int ) ;
 int bfa_sm_send_event (struct bfa_dconf_mod_s*,int ) ;

__attribute__((used)) static void
bfa_dconf_cbfn(void *arg, bfa_status_t status)
{
 struct bfa_dconf_mod_s *dconf = arg;
 WARN_ON(status);
 bfa_sm_send_event(dconf, BFA_DCONF_SM_FLASH_COMP);
}
