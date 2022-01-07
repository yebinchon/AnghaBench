
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_s {int iocfc; } ;
struct bfa_dconf_mod_s {TYPE_2__* dconf; } ;
typedef scalar_t__ bfa_status_t ;
typedef int bfa_dconf_read_data_valid ;
struct TYPE_3__ {scalar_t__ signature; scalar_t__ version; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;


 struct bfa_dconf_mod_s* BFA_DCONF_MOD (struct bfa_s*) ;
 int BFA_DCONF_SM_FLASH_COMP ;
 scalar_t__ BFA_STATUS_OK ;
 int BFA_TRUE ;
 scalar_t__ BFI_DCONF_SIGNATURE ;
 scalar_t__ BFI_DCONF_VERSION ;
 int IOCFC_E_DCONF_DONE ;
 int bfa_fsm_send_event (int *,int ) ;
 int bfa_sm_send_event (struct bfa_dconf_mod_s*,int ) ;

__attribute__((used)) static void
bfa_dconf_init_cb(void *arg, bfa_status_t status)
{
 struct bfa_s *bfa = arg;
 struct bfa_dconf_mod_s *dconf = BFA_DCONF_MOD(bfa);

 if (status == BFA_STATUS_OK) {
  bfa_dconf_read_data_valid(bfa) = BFA_TRUE;
  if (dconf->dconf->hdr.signature != BFI_DCONF_SIGNATURE)
   dconf->dconf->hdr.signature = BFI_DCONF_SIGNATURE;
  if (dconf->dconf->hdr.version != BFI_DCONF_VERSION)
   dconf->dconf->hdr.version = BFI_DCONF_VERSION;
 }
 bfa_sm_send_event(dconf, BFA_DCONF_SM_FLASH_COMP);
 bfa_fsm_send_event(&bfa->iocfc, IOCFC_E_DCONF_DONE);
}
