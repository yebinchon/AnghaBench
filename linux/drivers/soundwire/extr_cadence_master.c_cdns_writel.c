
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdw_cdns {scalar_t__ registers; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void cdns_writel(struct sdw_cdns *cdns, int offset, u32 value)
{
 writel(value, cdns->registers + offset);
}
