
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SMS_ROT_PHYSICAL_BA (unsigned int) ;
 int __raw_writel (int ,scalar_t__) ;
 scalar_t__ vrfb_base ;

__attribute__((used)) static void omap2_sms_write_rot_physical_ba(u32 val, unsigned ctx)
{
 __raw_writel(val, vrfb_base + SMS_ROT_PHYSICAL_BA(ctx));
}
