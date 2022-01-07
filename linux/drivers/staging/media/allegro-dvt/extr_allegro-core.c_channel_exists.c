
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_channel {int mcu_channel_id; } ;



__attribute__((used)) static inline bool channel_exists(struct allegro_channel *channel)
{
 return channel->mcu_channel_id != -1;
}
