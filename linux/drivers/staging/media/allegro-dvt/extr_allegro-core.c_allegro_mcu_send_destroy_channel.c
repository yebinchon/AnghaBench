
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int type; } ;
struct mcu_msg_destroy_channel {int channel_id; TYPE_1__ header; } ;
struct allegro_dev {int mbox_command; } ;
struct allegro_channel {int mcu_channel_id; } ;
typedef int msg ;


 int MCU_MSG_TYPE_DESTROY_CHANNEL ;
 int allegro_mbox_write (struct allegro_dev*,int *,struct mcu_msg_destroy_channel*,int) ;
 int allegro_mcu_interrupt (struct allegro_dev*) ;
 int memset (struct mcu_msg_destroy_channel*,int ,int) ;

__attribute__((used)) static int allegro_mcu_send_destroy_channel(struct allegro_dev *dev,
         struct allegro_channel *channel)
{
 struct mcu_msg_destroy_channel msg;

 memset(&msg, 0, sizeof(msg));

 msg.header.type = MCU_MSG_TYPE_DESTROY_CHANNEL;
 msg.header.length = sizeof(msg) - sizeof(msg.header);

 msg.channel_id = channel->mcu_channel_id;

 allegro_mbox_write(dev, &dev->mbox_command, &msg, sizeof(msg));
 allegro_mcu_interrupt(dev);

 return 0;
}
