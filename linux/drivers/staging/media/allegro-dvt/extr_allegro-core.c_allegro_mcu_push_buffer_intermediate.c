
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_channel {int dummy; } ;
typedef enum mcu_msg_type { ____Placeholder_mcu_msg_type } mcu_msg_type ;


 int MCU_MSG_TYPE_PUSH_BUFFER_INTERMEDIATE ;
 int allegro_mcu_push_buffer_internal (struct allegro_channel*,int) ;

__attribute__((used)) static int allegro_mcu_push_buffer_intermediate(struct allegro_channel *channel)
{
 enum mcu_msg_type type = MCU_MSG_TYPE_PUSH_BUFFER_INTERMEDIATE;

 return allegro_mcu_push_buffer_internal(channel, type);
}
