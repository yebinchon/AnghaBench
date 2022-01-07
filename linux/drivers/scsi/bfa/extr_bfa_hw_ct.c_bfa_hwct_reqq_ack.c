
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int * cpe_q_ctrl; } ;
struct TYPE_4__ {TYPE_1__ bfa_regs; } ;
struct bfa_s {TYPE_2__ iocfc; } ;


 int readl (int ) ;
 int writel (int ,int ) ;

void
bfa_hwct_reqq_ack(struct bfa_s *bfa, int reqq)
{
 u32 r32;

 r32 = readl(bfa->iocfc.bfa_regs.cpe_q_ctrl[reqq]);
 writel(r32, bfa->iocfc.bfa_regs.cpe_q_ctrl[reqq]);
}
