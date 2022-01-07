
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_channel {int lock; int mode_name; int color_name; int attr_groups; int attr_group; int attrs; } ;


 int kfree (int ) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void gb_lights_channel_free(struct gb_channel *channel)
{
 kfree(channel->attrs);
 kfree(channel->attr_group);
 kfree(channel->attr_groups);
 kfree(channel->color_name);
 kfree(channel->mode_name);
 mutex_destroy(&channel->lock);
}
