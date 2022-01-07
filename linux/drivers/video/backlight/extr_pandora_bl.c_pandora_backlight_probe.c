
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct platform_device {int dev; int name; } ;
struct pandora_private {int old_state; } ;
struct backlight_properties {int type; void* max_brightness; } ;
struct TYPE_2__ {void* brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
typedef int props ;


 int BACKLIGHT_RAW ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 void* MAX_USER_VALUE ;
 int PANDORABL_WAS_OFF ;
 int PTR_ERR (struct backlight_device*) ;
 int TWL4030_MODULE_INTBR ;
 int TWL_INTBR_PMBR1 ;
 int TWL_MODULE_PWM ;
 int TWL_PMBR1_PWM0 ;
 int TWL_PMBR1_PWM0_MUXMASK ;
 int TWL_PWM0_ON ;
 int backlight_update_status (struct backlight_device*) ;
 int dev_err (int *,char*) ;
 struct backlight_device* devm_backlight_device_register (int *,int ,int *,struct pandora_private*,int *,struct backlight_properties*) ;
 struct pandora_private* devm_kmalloc (int *,int,int ) ;
 int memset (struct backlight_properties*,int ,int) ;
 int pandora_backlight_ops ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;
 int twl_i2c_read_u8 (int ,int*,int ) ;
 int twl_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static int pandora_backlight_probe(struct platform_device *pdev)
{
 struct backlight_properties props;
 struct backlight_device *bl;
 struct pandora_private *priv;
 u8 r;

 priv = devm_kmalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv) {
  dev_err(&pdev->dev, "failed to allocate driver private data\n");
  return -ENOMEM;
 }

 memset(&props, 0, sizeof(props));
 props.max_brightness = MAX_USER_VALUE;
 props.type = BACKLIGHT_RAW;
 bl = devm_backlight_device_register(&pdev->dev, pdev->name, &pdev->dev,
     priv, &pandora_backlight_ops, &props);
 if (IS_ERR(bl)) {
  dev_err(&pdev->dev, "failed to register backlight\n");
  return PTR_ERR(bl);
 }

 platform_set_drvdata(pdev, bl);


 twl_i2c_write_u8(TWL_MODULE_PWM, 0x80, TWL_PWM0_ON);

 priv->old_state = PANDORABL_WAS_OFF;
 bl->props.brightness = MAX_USER_VALUE;
 backlight_update_status(bl);


 twl_i2c_read_u8(TWL4030_MODULE_INTBR, &r, TWL_INTBR_PMBR1);
 r &= ~TWL_PMBR1_PWM0_MUXMASK;
 r |= TWL_PMBR1_PWM0;
 twl_i2c_write_u8(TWL4030_MODULE_INTBR, r, TWL_INTBR_PMBR1);

 return 0;
}
