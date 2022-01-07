
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipaq_micro_msg {int tx_len; int* tx_data; int id; } ;
struct ipaq_micro {int dummy; } ;
struct TYPE_2__ {int brightness; scalar_t__ power; int state; } ;
struct backlight_device {TYPE_1__ props; int dev; } ;


 int BL_CORE_FBBLANK ;
 int BL_CORE_SUSPENDED ;
 scalar_t__ FB_BLANK_UNBLANK ;
 int MSG_BACKLIGHT ;
 struct ipaq_micro* dev_get_drvdata (int *) ;
 int ipaq_micro_tx_msg_sync (struct ipaq_micro*,struct ipaq_micro_msg*) ;

__attribute__((used)) static int micro_bl_update_status(struct backlight_device *bd)
{
 struct ipaq_micro *micro = dev_get_drvdata(&bd->dev);
 int intensity = bd->props.brightness;
 struct ipaq_micro_msg msg = {
  .id = MSG_BACKLIGHT,
  .tx_len = 3,
 };

 if (bd->props.power != FB_BLANK_UNBLANK)
  intensity = 0;
 if (bd->props.state & (BL_CORE_FBBLANK | BL_CORE_SUSPENDED))
  intensity = 0;







 msg.tx_data[0] = 0x01;
 msg.tx_data[1] = intensity > 0 ? 1 : 0;
 msg.tx_data[2] = intensity;
 return ipaq_micro_tx_msg_sync(micro, &msg);
}
