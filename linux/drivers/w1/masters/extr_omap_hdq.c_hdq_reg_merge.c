
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct hdq_data {scalar_t__ hdq_base; } ;


 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static inline u8 hdq_reg_merge(struct hdq_data *hdq_data, u32 offset,
   u8 val, u8 mask)
{
 u8 new_val = (__raw_readl(hdq_data->hdq_base + offset) & ~mask)
   | (val & mask);
 __raw_writel(new_val, hdq_data->hdq_base + offset);

 return new_val;
}
