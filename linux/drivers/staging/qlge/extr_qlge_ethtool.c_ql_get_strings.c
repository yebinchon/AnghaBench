
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int stat_string; } ;


 int ETH_GSTRING_LEN ;


 int QLGE_STATS_LEN ;
 int QLGE_TEST_LEN ;
 int memcpy (int *,int ,int) ;
 TYPE_1__* ql_gstrings_stats ;
 int * ql_gstrings_test ;

__attribute__((used)) static void ql_get_strings(struct net_device *dev, u32 stringset, u8 *buf)
{
 int index;
 switch (stringset) {
 case 128:
  memcpy(buf, *ql_gstrings_test, QLGE_TEST_LEN * ETH_GSTRING_LEN);
  break;
 case 129:
  for (index = 0; index < QLGE_STATS_LEN; index++) {
   memcpy(buf + index * ETH_GSTRING_LEN,
    ql_gstrings_stats[index].stat_string,
    ETH_GSTRING_LEN);
  }
  break;
 }
}
