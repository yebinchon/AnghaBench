
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* iop; } ;
struct TYPE_6__ {TYPE_2__ itl; } ;
struct hptiop_hba {TYPE_3__ u; } ;
struct TYPE_4__ {int outbound_intstatus; int inbound_msgaddr0; } ;


 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void hptiop_post_msg_itl(struct hptiop_hba *hba, u32 msg)
{
 writel(msg, &hba->u.itl.iop->inbound_msgaddr0);
 readl(&hba->u.itl.iop->outbound_intstatus);
}
