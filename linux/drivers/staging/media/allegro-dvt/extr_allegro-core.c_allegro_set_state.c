
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_channel {int state; } ;
typedef enum allegro_state { ____Placeholder_allegro_state } allegro_state ;



__attribute__((used)) static inline int
allegro_set_state(struct allegro_channel *channel, enum allegro_state state)
{
 channel->state = state;

 return 0;
}
