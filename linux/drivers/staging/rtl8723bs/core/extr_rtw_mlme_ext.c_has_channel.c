
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int ChannelNum; } ;
typedef TYPE_1__ RT_CHANNEL_INFO ;



__attribute__((used)) static int has_channel(RT_CHANNEL_INFO *channel_set,
        u8 chanset_size,
        u8 chan)
{
 int i;

 for (i = 0; i < chanset_size; i++) {
  if (channel_set[i].ChannelNum == chan) {
   return 1;
  }
 }

 return 0;
}
