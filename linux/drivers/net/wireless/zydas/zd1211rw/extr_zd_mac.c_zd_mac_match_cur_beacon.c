
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cur_beacon; } ;
struct zd_mac {TYPE_2__ beacon; } ;
struct sk_buff {scalar_t__ len; int data; } ;
struct TYPE_3__ {scalar_t__ len; int data; } ;


 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static bool zd_mac_match_cur_beacon(struct zd_mac *mac, struct sk_buff *beacon)
{
 if (!mac->beacon.cur_beacon)
  return 0;

 if (mac->beacon.cur_beacon->len != beacon->len)
  return 0;

 return !memcmp(beacon->data, mac->beacon.cur_beacon->data, beacon->len);
}
