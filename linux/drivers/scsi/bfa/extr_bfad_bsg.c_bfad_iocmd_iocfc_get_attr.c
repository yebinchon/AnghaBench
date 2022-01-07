
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfa; } ;
struct bfa_bsg_iocfc_attr_s {int iocfc_attr; int status; } ;


 int BFA_STATUS_OK ;
 int bfa_iocfc_get_attr (int *,int *) ;

int
bfad_iocmd_iocfc_get_attr(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_iocfc_attr_s *iocmd = (struct bfa_bsg_iocfc_attr_s *)cmd;

 iocmd->status = BFA_STATUS_OK;
 bfa_iocfc_get_attr(&bfad->bfa, &iocmd->iocfc_attr);

 return 0;
}
