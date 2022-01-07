
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_hba {int hbq_in_use; int hbq_count; TYPE_1__* hbqs; } ;
struct TYPE_4__ {int entry_count; } ;
struct TYPE_3__ {int entry_count; } ;


 size_t LPFC_ELS_HBQ ;
 TYPE_2__** lpfc_hbq_defs ;
 int lpfc_sli_hbqbuf_init_hbqs (struct lpfc_hba*,size_t) ;

__attribute__((used)) static int
lpfc_sli4_rb_setup(struct lpfc_hba *phba)
{
 phba->hbq_in_use = 1;
 phba->hbqs[LPFC_ELS_HBQ].entry_count =
  lpfc_hbq_defs[LPFC_ELS_HBQ]->entry_count;
 phba->hbq_count = 1;
 lpfc_sli_hbqbuf_init_hbqs(phba, LPFC_ELS_HBQ);

 return 0;
}
