
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wmt_pinctrl_data {scalar_t__ base; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void wmt_setbits(struct wmt_pinctrl_data *data, u32 reg,
     u32 mask)
{
 u32 val;

 val = readl_relaxed(data->base + reg);
 val |= mask;
 writel_relaxed(val, data->base + reg);
}
