
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_channel {int mode; } ;


 int GB_CHANNEL_MODE_FLASH ;
 int GB_CHANNEL_MODE_INDICATOR ;
 int GB_CHANNEL_MODE_TORCH ;

__attribute__((used)) static bool is_channel_flash(struct gb_channel *channel)
{
 return !!(channel->mode & (GB_CHANNEL_MODE_FLASH | GB_CHANNEL_MODE_TORCH
       | GB_CHANNEL_MODE_INDICATOR));
}
