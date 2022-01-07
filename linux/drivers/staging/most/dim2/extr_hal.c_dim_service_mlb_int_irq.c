
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dim2; } ;
struct TYPE_3__ {int MS1; int MS0; } ;


 TYPE_2__ g ;
 int writel (int ,int *) ;

void dim_service_mlb_int_irq(void)
{
 writel(0, &g.dim2->MS0);
 writel(0, &g.dim2->MS1);
}
