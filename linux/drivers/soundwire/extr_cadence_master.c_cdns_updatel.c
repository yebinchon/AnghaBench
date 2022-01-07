
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdw_cdns {int dummy; } ;


 int cdns_readl (struct sdw_cdns*,int) ;
 int cdns_writel (struct sdw_cdns*,int,int) ;

__attribute__((used)) static inline void cdns_updatel(struct sdw_cdns *cdns,
    int offset, u32 mask, u32 val)
{
 u32 tmp;

 tmp = cdns_readl(cdns, offset);
 tmp = (tmp & ~mask) | val;
 cdns_writel(cdns, offset, tmp);
}
