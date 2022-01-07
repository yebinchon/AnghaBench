
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ETHSW_NUM_COUNTERS ;
 int ETH_GSTRING_LEN ;

 TYPE_1__* ethsw_ethtool_counters ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void ethsw_ethtool_get_strings(struct net_device *netdev,
          u32 stringset, u8 *data)
{
 int i;

 switch (stringset) {
 case 128:
  for (i = 0; i < ETHSW_NUM_COUNTERS; i++)
   memcpy(data + i * ETH_GSTRING_LEN,
          ethsw_ethtool_counters[i].name, ETH_GSTRING_LEN);
  break;
 }
}
