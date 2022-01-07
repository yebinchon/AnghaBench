
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn_t ;
typedef scalar_t__ u8 ;
struct bfad_s {int bfa; } ;


 int BFA_PREBOOT_BOOTLUN_MAX ;
 int bfa_iocfc_get_bootwwns (int *,scalar_t__*,int *) ;

int
bfad_get_linkup_delay(struct bfad_s *bfad)
{
 u8 nwwns = 0;
 wwn_t wwns[BFA_PREBOOT_BOOTLUN_MAX];
 int linkup_delay;
 bfa_iocfc_get_bootwwns(&bfad->bfa, &nwwns, wwns);

 if (nwwns > 0)

  linkup_delay = 30;
 else

  linkup_delay = 0;

 return linkup_delay;
}
