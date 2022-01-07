
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_of_avmulti; int num_of_hdmi; } ;
struct TYPE_4__ {TYPE_1__ av_hw_conf; int * av_port; } ;


 TYPE_2__* ps3av ;
 int ps3av_cmd_av_audio_mute (int,int *,int) ;

int ps3av_audio_mute_analog(int mute)
{
 int i, res;

 for (i = 0; i < ps3av->av_hw_conf.num_of_avmulti; i++) {
  res = ps3av_cmd_av_audio_mute(1,
   &ps3av->av_port[i + ps3av->av_hw_conf.num_of_hdmi],
   mute);
  if (res < 0)
   return -1;
 }
 return 0;
}
