
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* dim2; } ;
struct TYPE_3__ {int MLBC0; int MLBC1; } ;


 int MLBC0_MLBLK_BIT ;
 int MLBC1_CLKMERR_BIT ;
 int MLBC1_LOCKERR_BIT ;
 scalar_t__ MLBC1_NDA_MASK ;
 int MLBC1_NDA_SHIFT ;
 int bit_mask (int ) ;
 TYPE_2__ g ;
 int const readl (int *) ;
 int writel (int const,int *) ;

__attribute__((used)) static bool dim2_is_mlb_locked(void)
{
 u32 const mask0 = bit_mask(MLBC0_MLBLK_BIT);
 u32 const mask1 = bit_mask(MLBC1_CLKMERR_BIT) |
     bit_mask(MLBC1_LOCKERR_BIT);
 u32 const c1 = readl(&g.dim2->MLBC1);
 u32 const nda_mask = (u32)MLBC1_NDA_MASK << MLBC1_NDA_SHIFT;

 writel(c1 & nda_mask, &g.dim2->MLBC1);
 return (readl(&g.dim2->MLBC1) & mask1) == 0 &&
        (readl(&g.dim2->MLBC0) & mask0) != 0;
}
