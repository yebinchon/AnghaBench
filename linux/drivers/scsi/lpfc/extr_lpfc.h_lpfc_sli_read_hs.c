
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int err_attn_event; } ;
struct TYPE_6__ {TYPE_2__ slistat; } ;
struct lpfc_hba {TYPE_1__* pport; int HAregaddr; int * work_status; scalar_t__ MBslimaddr; int work_hs; scalar_t__ HSregaddr; TYPE_3__ sli; } ;
struct TYPE_4__ {int stopped; } ;


 int EIO ;
 int HA_ERATT ;
 scalar_t__ lpfc_readl (scalar_t__,int *) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline int
lpfc_sli_read_hs(struct lpfc_hba *phba)
{




 phba->sli.slistat.err_attn_event++;


 if (lpfc_readl(phba->HSregaddr, &phba->work_hs) ||
  lpfc_readl(phba->MBslimaddr + 0xa8, &phba->work_status[0]) ||
  lpfc_readl(phba->MBslimaddr + 0xac, &phba->work_status[1])) {
  return -EIO;
 }


 writel(HA_ERATT, phba->HAregaddr);
 readl(phba->HAregaddr);
 phba->pport->stopped = 1;

 return 0;
}
