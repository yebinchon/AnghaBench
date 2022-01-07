
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int cfg_log_verbose; } ;



__attribute__((used)) static void
lpfc_hba_log_verbose_init(struct lpfc_hba *phba, uint32_t verbose)
{
 phba->cfg_log_verbose = verbose;
}
