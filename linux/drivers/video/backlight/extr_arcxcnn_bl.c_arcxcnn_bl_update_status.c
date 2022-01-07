
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int state; scalar_t__ power; scalar_t__ brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct arcxcnn {int dummy; } ;


 int ARCXCNN_CMD ;
 int ARCXCNN_CMD_STDBY ;
 int BL_CORE_FBBLANK ;
 int BL_CORE_SUSPENDED ;
 int arcxcnn_set_brightness (struct arcxcnn*,scalar_t__) ;
 int arcxcnn_update_field (struct arcxcnn*,int ,int ,int ) ;
 struct arcxcnn* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int arcxcnn_bl_update_status(struct backlight_device *bl)
{
 struct arcxcnn *lp = bl_get_data(bl);
 u32 brightness = bl->props.brightness;
 int ret;

 if (bl->props.state & (BL_CORE_SUSPENDED | BL_CORE_FBBLANK))
  brightness = 0;

 ret = arcxcnn_set_brightness(lp, brightness);
 if (ret)
  return ret;


 return arcxcnn_update_field(lp, ARCXCNN_CMD, ARCXCNN_CMD_STDBY,
  (bl->props.power == 0) ? 0 : ARCXCNN_CMD_STDBY);
}
