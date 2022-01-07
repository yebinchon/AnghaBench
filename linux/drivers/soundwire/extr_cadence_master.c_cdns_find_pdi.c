
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_cdns_pdi {int assigned; } ;
struct sdw_cdns {int dummy; } ;



__attribute__((used)) static struct sdw_cdns_pdi *cdns_find_pdi(struct sdw_cdns *cdns,
       unsigned int num,
       struct sdw_cdns_pdi *pdi)
{
 int i;

 for (i = 0; i < num; i++) {
  if (pdi[i].assigned)
   continue;
  pdi[i].assigned = 1;
  return &pdi[i];
 }

 return ((void*)0);
}
