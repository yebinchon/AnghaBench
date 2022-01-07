
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int fcnt; TYPE_1__* dim2; } ;
struct TYPE_3__ {int ACTL; int HCTL; int HCMR1; int HCMR0; int MLBC0; } ;


 int ACTL_DMA_MODE_BIT ;
 int ACTL_DMA_MODE_VAL_DMA_MODE_1 ;
 int ACTL_SCE_BIT ;
 int HCTL_EN_BIT ;
 int MLBC0_FCNT_SHIFT ;
 int MLBC0_MLBCLK_SHIFT ;
 int MLBC0_MLBEN_BIT ;
 int MLBC0_MLBPEN_BIT ;
 int bit_mask (int ) ;
 int dim2_cleanup () ;
 TYPE_2__ g ;
 int writel (int,int *) ;

__attribute__((used)) static void dim2_initialize(bool enable_6pin, u8 mlb_clock)
{
 dim2_cleanup();


 writel(enable_6pin << MLBC0_MLBPEN_BIT |
        mlb_clock << MLBC0_MLBCLK_SHIFT |
        g.fcnt << MLBC0_FCNT_SHIFT |
        1 << MLBC0_MLBEN_BIT,
        &g.dim2->MLBC0);


 writel(0xFFFFFFFF, &g.dim2->HCMR0);
 writel(0xFFFFFFFF, &g.dim2->HCMR1);


 writel(bit_mask(HCTL_EN_BIT), &g.dim2->HCTL);


 writel(ACTL_DMA_MODE_VAL_DMA_MODE_1 << ACTL_DMA_MODE_BIT |
        1 << ACTL_SCE_BIT, &g.dim2->ACTL);
}
