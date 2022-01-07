
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct gb_channel {struct led_classdev cled; } ;



__attribute__((used)) static struct led_classdev *get_channel_cdev(struct gb_channel *channel)
{
 return &channel->cled;
}
