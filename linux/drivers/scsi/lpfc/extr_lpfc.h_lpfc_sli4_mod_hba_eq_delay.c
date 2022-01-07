
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct lpfc_register {scalar_t__ word0; } ;
struct lpfc_queue {int q_mode; int queue_id; } ;
struct TYPE_4__ {int EQDregaddr; } ;
struct TYPE_5__ {TYPE_1__ if_type2; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct lpfc_hba {TYPE_3__ sli4_hba; } ;


 int bf_set (int ,struct lpfc_register*,int ) ;
 int lpfc_sliport_eqdelay_delay ;
 int lpfc_sliport_eqdelay_id ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static inline void
lpfc_sli4_mod_hba_eq_delay(struct lpfc_hba *phba, struct lpfc_queue *eq,
      u32 delay)
{
 struct lpfc_register reg_data;

 reg_data.word0 = 0;
 bf_set(lpfc_sliport_eqdelay_id, &reg_data, eq->queue_id);
 bf_set(lpfc_sliport_eqdelay_delay, &reg_data, delay);
 writel(reg_data.word0, phba->sli4_hba.u.if_type2.EQDregaddr);
 eq->q_mode = delay;
}
