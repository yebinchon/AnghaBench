
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int * name; } ;
struct gb_channel {int * led; int is_registered; } ;


 struct led_classdev* get_channel_cdev (struct gb_channel*) ;
 int kfree (int *) ;
 int led_classdev_unregister (struct led_classdev*) ;

__attribute__((used)) static void __gb_lights_led_unregister(struct gb_channel *channel)
{
 struct led_classdev *cdev = get_channel_cdev(channel);

 if (!channel->is_registered)
  return;

 led_classdev_unregister(cdev);
 kfree(cdev->name);
 cdev->name = ((void*)0);
 channel->led = ((void*)0);
}
