
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtllib_device {int active_channel_map; } ;
struct TYPE_2__ {int channel_map; } ;


 TYPE_1__* GET_DOT11D_INFO (struct rtllib_device*) ;
 scalar_t__ MAX_CHANNEL_NUMBER ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static void rtllib_update_active_chan_map(struct rtllib_device *ieee)
{
 memcpy(ieee->active_channel_map, GET_DOT11D_INFO(ieee)->channel_map,
        MAX_CHANNEL_NUMBER+1);
}
