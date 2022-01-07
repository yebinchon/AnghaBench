
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int type; } ;
struct mcu_msg_init_request {int suballoc_dma; size_t suballoc_size; int* l2_cache; TYPE_1__ header; } ;
struct allegro_dev {int mbox_command; } ;
typedef int msg ;
typedef int dma_addr_t ;


 int MCU_CACHE_OFFSET ;
 int MCU_MSG_TYPE_INIT ;
 int allegro_mbox_write (struct allegro_dev*,int *,struct mcu_msg_init_request*,int) ;
 int allegro_mcu_interrupt (struct allegro_dev*) ;
 int lower_32_bits (int ) ;
 int memset (struct mcu_msg_init_request*,int ,int) ;

__attribute__((used)) static void allegro_mcu_send_init(struct allegro_dev *dev,
      dma_addr_t suballoc_dma, size_t suballoc_size)
{
 struct mcu_msg_init_request msg;

 memset(&msg, 0, sizeof(msg));

 msg.header.type = MCU_MSG_TYPE_INIT;
 msg.header.length = sizeof(msg) - sizeof(msg.header);

 msg.suballoc_dma = lower_32_bits(suballoc_dma) | MCU_CACHE_OFFSET;
 msg.suballoc_size = suballoc_size;


 msg.l2_cache[0] = -1;
 msg.l2_cache[1] = -1;
 msg.l2_cache[2] = -1;

 allegro_mbox_write(dev, &dev->mbox_command, &msg, sizeof(msg));
 allegro_mcu_interrupt(dev);
}
