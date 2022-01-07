
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pend_q_lock; scalar_t__ scbpro; } ;
struct asd_ha_struct {TYPE_1__ seq; } ;
struct asd_ascb {int dummy; } ;


 int SCBPRO ;
 int asd_swap_head_scb (struct asd_ha_struct*,struct asd_ascb*) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int asd_post_escb_list(struct asd_ha_struct *asd_ha, struct asd_ascb *ascb,
         int num)
{
 unsigned long flags;

 spin_lock_irqsave(&asd_ha->seq.pend_q_lock, flags);
 asd_swap_head_scb(asd_ha, ascb);
 asd_ha->seq.scbpro += num;
 asd_write_reg_dword(asd_ha, SCBPRO, (u32)asd_ha->seq.scbpro);
 spin_unlock_irqrestore(&asd_ha->seq.pend_q_lock, flags);

 return 0;
}
