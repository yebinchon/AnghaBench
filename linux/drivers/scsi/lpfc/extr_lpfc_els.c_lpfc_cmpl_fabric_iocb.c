
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int lsRjtRsnCode; } ;
struct TYPE_8__ {TYPE_3__ b; int lsRjtError; } ;
struct ls_rjt {TYPE_4__ un; } ;
struct TYPE_5__ {int* ulpWord; } ;
struct TYPE_6__ {int ulpStatus; TYPE_1__ un; } ;
struct lpfc_iocbq {int iocb_flag; int (* iocb_cmpl ) (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;int (* fabric_iocb_cmpl ) (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;TYPE_2__ iocb; } ;
struct lpfc_hba {int bit_flags; int fabric_iocb_count; } ;


 int BUG_ON (int) ;
 int FABRIC_COMANDS_BLOCKED ;





 int LPFC_IO_FABRIC ;
 int LSRJT_LOGICAL_BSY ;
 int LSRJT_UNABLE_TPC ;
 int RJT_UNAVAIL_TEMP ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int be32_to_cpu (int) ;
 int lpfc_block_fabric_iocbs (struct lpfc_hba*) ;
 int lpfc_resume_fabric_iocbs (struct lpfc_hba*) ;
 int stub1 (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
lpfc_cmpl_fabric_iocb(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
 struct lpfc_iocbq *rspiocb)
{
 struct ls_rjt stat;

 BUG_ON((cmdiocb->iocb_flag & LPFC_IO_FABRIC) != LPFC_IO_FABRIC);

 switch (rspiocb->iocb.ulpStatus) {
  case 128:
  case 131:
   if (rspiocb->iocb.un.ulpWord[4] & RJT_UNAVAIL_TEMP) {
    lpfc_block_fabric_iocbs(phba);
   }
   break;

  case 129:
  case 132:
   lpfc_block_fabric_iocbs(phba);
   break;

  case 130:
   stat.un.lsRjtError =
    be32_to_cpu(rspiocb->iocb.un.ulpWord[4]);
   if ((stat.un.b.lsRjtRsnCode == LSRJT_UNABLE_TPC) ||
    (stat.un.b.lsRjtRsnCode == LSRJT_LOGICAL_BSY))
    lpfc_block_fabric_iocbs(phba);
   break;
 }

 BUG_ON(atomic_read(&phba->fabric_iocb_count) == 0);

 cmdiocb->iocb_cmpl = cmdiocb->fabric_iocb_cmpl;
 cmdiocb->fabric_iocb_cmpl = ((void*)0);
 cmdiocb->iocb_flag &= ~LPFC_IO_FABRIC;
 cmdiocb->iocb_cmpl(phba, cmdiocb, rspiocb);

 atomic_dec(&phba->fabric_iocb_count);
 if (!test_bit(FABRIC_COMANDS_BLOCKED, &phba->bit_flags)) {

  lpfc_resume_fabric_iocbs(phba);
 }
}
