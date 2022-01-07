
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rsi_sta {TYPE_1__* sta; } ;
struct rsi_common {int max_stations; struct rsi_sta* stations; } ;
struct TYPE_2__ {int addr; } ;


 int ETH_ALEN ;
 int memcmp (int ,int *,int ) ;

struct rsi_sta *rsi_find_sta(struct rsi_common *common, u8 *mac_addr)
{
 int i;

 for (i = 0; i < common->max_stations; i++) {
  if (!common->stations[i].sta)
   continue;
  if (!(memcmp(common->stations[i].sta->addr,
        mac_addr, ETH_ALEN)))
   return &common->stations[i];
 }
 return ((void*)0);
}
