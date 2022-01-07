
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m2m_ctx; } ;
struct allegro_channel {TYPE_1__ fh; } ;





 int allegro_get_state (struct allegro_channel*) ;
 int v4l2_m2m_num_src_bufs_ready (int ) ;

__attribute__((used)) static bool allegro_channel_is_at_eos(struct allegro_channel *channel)
{
 bool is_at_eos = 0;

 switch (allegro_get_state(channel)) {
 case 129:
  is_at_eos = 1;
  break;
 case 130:
 case 128:
  if (v4l2_m2m_num_src_bufs_ready(channel->fh.m2m_ctx) == 0)
   is_at_eos = 1;
  break;
 default:
  break;
 }

 return is_at_eos;
}
