
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dim2; } ;
struct TYPE_3__ {int ACMR1; int ACMR0; int ACSR1; int ACSR0; int MIEN; int MLBC0; } ;


 int MLBC0_MLBEN_BIT ;
 int dim2_clear_ctram () ;
 TYPE_2__ g ;
 int writel (int,int *) ;

__attribute__((used)) static void dim2_cleanup(void)
{

 writel(0 << MLBC0_MLBEN_BIT, &g.dim2->MLBC0);

 dim2_clear_ctram();


 writel(0, &g.dim2->MIEN);


 writel(0xFFFFFFFF, &g.dim2->ACSR0);
 writel(0xFFFFFFFF, &g.dim2->ACSR1);


 writel(0, &g.dim2->ACMR0);
 writel(0, &g.dim2->ACMR1);
}
