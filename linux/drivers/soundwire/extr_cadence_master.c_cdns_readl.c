
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdw_cdns {scalar_t__ registers; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 cdns_readl(struct sdw_cdns *cdns, int offset)
{
 return readl(cdns->registers + offset);
}
