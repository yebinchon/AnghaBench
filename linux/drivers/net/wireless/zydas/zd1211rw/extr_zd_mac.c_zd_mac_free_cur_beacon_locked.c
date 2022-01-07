
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * cur_beacon; } ;
struct TYPE_3__ {int mutex; } ;
struct zd_mac {TYPE_2__ beacon; TYPE_1__ chip; } ;


 int ZD_ASSERT (int ) ;
 int kfree_skb (int *) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void zd_mac_free_cur_beacon_locked(struct zd_mac *mac)
{
 ZD_ASSERT(mutex_is_locked(&mac->chip.mutex));

 kfree_skb(mac->beacon.cur_beacon);
 mac->beacon.cur_beacon = ((void*)0);
}
