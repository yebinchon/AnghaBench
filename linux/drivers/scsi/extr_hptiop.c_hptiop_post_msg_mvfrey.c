
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* mu; } ;
struct TYPE_6__ {TYPE_2__ mvfrey; } ;
struct hptiop_hba {TYPE_3__ u; } ;
struct TYPE_4__ {int f0_to_cpu_msg_a; } ;


 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void hptiop_post_msg_mvfrey(struct hptiop_hba *hba, u32 msg)
{
 writel(msg, &(hba->u.mvfrey.mu->f0_to_cpu_msg_a));
 readl(&(hba->u.mvfrey.mu->f0_to_cpu_msg_a));
}
