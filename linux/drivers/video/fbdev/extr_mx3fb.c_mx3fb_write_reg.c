
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mx3fb_data {scalar_t__ reg_base; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static void mx3fb_write_reg(struct mx3fb_data *mx3fb, u32 value, unsigned long reg)
{
 __raw_writel(value, mx3fb->reg_base + reg);
}
