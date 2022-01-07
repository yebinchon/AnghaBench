
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_connection {TYPE_1__* bundle; } ;
struct gb_channel {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 struct gb_connection* get_conn_from_channel (struct gb_channel*) ;

__attribute__((used)) static int gb_lights_channel_flash_config(struct gb_channel *channel)
{
 struct gb_connection *connection = get_conn_from_channel(channel);

 dev_err(&connection->bundle->dev, "no support for flash devices\n");
 return 0;
}
