
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_channel {int dummy; } ;



 int ALLEGRO_STATE_ENCODING ;


 int EBUSY ;
 int allegro_get_state (struct allegro_channel*) ;
 int allegro_set_state (struct allegro_channel*,int ) ;

__attribute__((used)) static int allegro_channel_cmd_start(struct allegro_channel *channel)
{
 switch (allegro_get_state(channel)) {
 case 130:
 case 128:
  return -EBUSY;
 case 129:
  allegro_set_state(channel, ALLEGRO_STATE_ENCODING);
  break;
 default:
  return 0;
 }

 return 0;
}
