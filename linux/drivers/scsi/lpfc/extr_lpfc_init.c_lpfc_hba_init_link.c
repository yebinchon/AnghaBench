
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int cfg_topology; } ;


 int lpfc_hba_init_link_fc_topology (struct lpfc_hba*,int ,int ) ;

__attribute__((used)) static int
lpfc_hba_init_link(struct lpfc_hba *phba, uint32_t flag)
{
 return lpfc_hba_init_link_fc_topology(phba, phba->cfg_topology, flag);
}
