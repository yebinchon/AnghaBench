
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {TYPE_1__* dim2; } ;
struct TYPE_3__ {int MDWE3; int MDWE2; int MDWE1; int MDWE0; int MDAT3; int MDAT2; int MDAT1; int MDAT0; int MCTL; } ;


 scalar_t__ bit_mask (int) ;
 int dim2_transfer_madr (scalar_t__) ;
 TYPE_2__ g ;
 int writel (scalar_t__ const,int *) ;

__attribute__((used)) static void dim2_write_ctr_mask(u32 ctr_addr, const u32 *mask, const u32 *value)
{
 enum { MADR_WNR_BIT = 31 };

 writel(0, &g.dim2->MCTL);

 if (mask[0] != 0)
  writel(value[0], &g.dim2->MDAT0);
 if (mask[1] != 0)
  writel(value[1], &g.dim2->MDAT1);
 if (mask[2] != 0)
  writel(value[2], &g.dim2->MDAT2);
 if (mask[3] != 0)
  writel(value[3], &g.dim2->MDAT3);

 writel(mask[0], &g.dim2->MDWE0);
 writel(mask[1], &g.dim2->MDWE1);
 writel(mask[2], &g.dim2->MDWE2);
 writel(mask[3], &g.dim2->MDWE3);

 dim2_transfer_madr(bit_mask(MADR_WNR_BIT) | ctr_addr);
}
