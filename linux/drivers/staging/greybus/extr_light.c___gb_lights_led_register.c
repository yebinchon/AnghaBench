
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_classdev {int dummy; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct gb_channel {int is_registered; int * led; } ;
struct TYPE_2__ {int dev; } ;


 struct led_classdev* get_channel_cdev (struct gb_channel*) ;
 struct gb_connection* get_conn_from_channel (struct gb_channel*) ;
 int led_classdev_register (int *,struct led_classdev*) ;

__attribute__((used)) static int __gb_lights_led_register(struct gb_channel *channel)
{
 struct gb_connection *connection = get_conn_from_channel(channel);
 struct led_classdev *cdev = get_channel_cdev(channel);
 int ret;

 ret = led_classdev_register(&connection->bundle->dev, cdev);
 if (ret < 0)
  channel->led = ((void*)0);
 else
  channel->is_registered = 1;
 return ret;
}
