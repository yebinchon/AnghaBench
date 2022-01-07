
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_spfi {int dummy; } ;


 int SPFI_CONTROL ;
 int SPFI_CONTROL_SPFI_EN ;
 int spfi_readl (struct img_spfi*,int ) ;
 int spfi_writel (struct img_spfi*,int ,int ) ;

__attribute__((used)) static inline void spfi_start(struct img_spfi *spfi)
{
 u32 val;

 val = spfi_readl(spfi, SPFI_CONTROL);
 val |= SPFI_CONTROL_SPFI_EN;
 spfi_writel(spfi, val, SPFI_CONTROL);
}
