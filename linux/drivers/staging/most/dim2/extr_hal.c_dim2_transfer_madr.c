
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* dim2; } ;
struct TYPE_3__ {int MCTL; int MADR; } ;


 TYPE_2__ g ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void dim2_transfer_madr(u32 val)
{
 writel(val, &g.dim2->MADR);


 while ((readl(&g.dim2->MCTL) & 1) != 1)
  continue;

 writel(0, &g.dim2->MCTL);
}
