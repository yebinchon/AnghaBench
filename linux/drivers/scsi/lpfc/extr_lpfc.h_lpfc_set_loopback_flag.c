
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {scalar_t__ cfg_topology; int link_flag; } ;


 scalar_t__ FLAGS_LOCAL_LB ;
 int LS_LOOPBACK_MODE ;

__attribute__((used)) static inline void
lpfc_set_loopback_flag(struct lpfc_hba *phba)
{
 if (phba->cfg_topology == FLAGS_LOCAL_LB)
  phba->link_flag |= LS_LOOPBACK_MODE;
 else
  phba->link_flag &= ~LS_LOOPBACK_MODE;
}
