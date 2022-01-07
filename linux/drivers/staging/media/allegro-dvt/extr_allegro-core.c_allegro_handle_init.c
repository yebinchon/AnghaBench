
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcu_msg_init_response {int dummy; } ;
struct allegro_dev {int init_complete; } ;


 int complete (int *) ;

__attribute__((used)) static int allegro_handle_init(struct allegro_dev *dev,
          struct mcu_msg_init_response *msg)
{
 complete(&dev->init_complete);

 return 0;
}
