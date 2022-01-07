
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdw_cdns_pdi {scalar_t__ ch_count; scalar_t__ assigned; } ;
struct sdw_cdns {int dummy; } ;



__attribute__((used)) static int cdns_get_num_pdi(struct sdw_cdns *cdns,
       struct sdw_cdns_pdi *pdi,
       unsigned int num, u32 ch_count)
{
 int i, pdis = 0;

 for (i = 0; i < num; i++) {
  if (pdi[i].assigned)
   continue;

  if (pdi[i].ch_count < ch_count)
   ch_count -= pdi[i].ch_count;
  else
   ch_count = 0;

  pdis++;

  if (!ch_count)
   break;
 }

 if (ch_count)
  return 0;

 return pdis;
}
