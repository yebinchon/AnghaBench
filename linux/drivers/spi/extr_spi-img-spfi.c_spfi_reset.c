
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_spfi {int dummy; } ;


 int SPFI_CONTROL ;
 int SPFI_CONTROL_SOFT_RESET ;
 int spfi_writel (struct img_spfi*,int ,int ) ;

__attribute__((used)) static inline void spfi_reset(struct img_spfi *spfi)
{
 spfi_writel(spfi, SPFI_CONTROL_SOFT_RESET, SPFI_CONTROL);
 spfi_writel(spfi, 0, SPFI_CONTROL);
}
