
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wwn_t ;
typedef int u8 ;
struct TYPE_6__ {int nwwns; int wwn; } ;
struct TYPE_5__ {int nbluns; TYPE_1__* blun; scalar_t__ boot_enabled; } ;
struct bfi_iocfc_cfgrsp_s {TYPE_3__ bootwwns; TYPE_2__ pbc_cfg; } ;
struct bfa_iocfc_s {struct bfi_iocfc_cfgrsp_s* cfgrsp; } ;
struct bfa_s {struct bfa_iocfc_s iocfc; } ;
struct TYPE_4__ {int tgt_pwwn; } ;


 int bfa_trc (struct bfa_s*,int) ;
 int memcpy (int *,int ,int) ;

void
bfa_iocfc_get_bootwwns(struct bfa_s *bfa, u8 *nwwns, wwn_t *wwns)
{
 struct bfa_iocfc_s *iocfc = &bfa->iocfc;
 struct bfi_iocfc_cfgrsp_s *cfgrsp = iocfc->cfgrsp;
 int i;

 if (cfgrsp->pbc_cfg.boot_enabled && cfgrsp->pbc_cfg.nbluns) {
  bfa_trc(bfa, cfgrsp->pbc_cfg.nbluns);
  *nwwns = cfgrsp->pbc_cfg.nbluns;
  for (i = 0; i < cfgrsp->pbc_cfg.nbluns; i++)
   wwns[i] = cfgrsp->pbc_cfg.blun[i].tgt_pwwn;

  return;
 }

 *nwwns = cfgrsp->bootwwns.nwwns;
 memcpy(wwns, cfgrsp->bootwwns.wwn, sizeof(cfgrsp->bootwwns.wwn));
}
