
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int sgi_20m; int sgi_40m; } ;
struct sta_info {int bw_mode; TYPE_1__ htpriv; } ;






u8 query_ra_short_GI(struct sta_info *psta)
{
 u8 sgi = 0, sgi_20m = 0, sgi_40m = 0, sgi_80m = 0;

 sgi_20m = psta->htpriv.sgi_20m;
 sgi_40m = psta->htpriv.sgi_40m;

 switch (psta->bw_mode) {
 case 128:
  sgi = sgi_80m;
  break;
 case 129:
  sgi = sgi_40m;
  break;
 case 130:
 default:
  sgi = sgi_20m;
  break;
 }

 return sgi;
}
