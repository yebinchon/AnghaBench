
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int parent; } ;
struct platform_device {TYPE_3__ dev; int name; int id; } ;
struct backlight_properties {void* max_brightness; int type; } ;
struct TYPE_9__ {int kobj; } ;
struct TYPE_8__ {void* brightness; } ;
struct backlight_device {TYPE_2__ dev; TYPE_1__ props; } ;
struct adp5520_bl {TYPE_5__* pdata; int master; int lock; scalar_t__ current_brightness; int id; } ;
struct TYPE_11__ {scalar_t__ en_ambl_sens; } ;


 void* ADP5020_MAX_BRIGHTNESS ;
 int BACKLIGHT_RAW ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 int adp5520_bl_attr_group ;
 int adp5520_bl_ops ;
 int adp5520_bl_setup (struct backlight_device*) ;
 int backlight_update_status (struct backlight_device*) ;
 int dev_err (TYPE_3__*,char*) ;
 TYPE_5__* dev_get_platdata (TYPE_3__*) ;
 struct backlight_device* devm_backlight_device_register (TYPE_3__*,int ,int ,struct adp5520_bl*,int *,struct backlight_properties*) ;
 struct adp5520_bl* devm_kzalloc (TYPE_3__*,int,int ) ;
 int memset (struct backlight_properties*,int ,int) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int adp5520_bl_probe(struct platform_device *pdev)
{
 struct backlight_properties props;
 struct backlight_device *bl;
 struct adp5520_bl *data;
 int ret = 0;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 data->master = pdev->dev.parent;
 data->pdata = dev_get_platdata(&pdev->dev);

 if (data->pdata == ((void*)0)) {
  dev_err(&pdev->dev, "missing platform data\n");
  return -ENODEV;
 }

 data->id = pdev->id;
 data->current_brightness = 0;

 mutex_init(&data->lock);

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = ADP5020_MAX_BRIGHTNESS;
 bl = devm_backlight_device_register(&pdev->dev, pdev->name,
     data->master, data, &adp5520_bl_ops,
     &props);
 if (IS_ERR(bl)) {
  dev_err(&pdev->dev, "failed to register backlight\n");
  return PTR_ERR(bl);
 }

 bl->props.brightness = ADP5020_MAX_BRIGHTNESS;
 if (data->pdata->en_ambl_sens)
  ret = sysfs_create_group(&bl->dev.kobj,
   &adp5520_bl_attr_group);

 if (ret) {
  dev_err(&pdev->dev, "failed to register sysfs\n");
  return ret;
 }

 platform_set_drvdata(pdev, bl);
 ret = adp5520_bl_setup(bl);
 if (ret) {
  dev_err(&pdev->dev, "failed to setup\n");
  if (data->pdata->en_ambl_sens)
   sysfs_remove_group(&bl->dev.kobj,
     &adp5520_bl_attr_group);
  return ret;
 }

 backlight_update_status(bl);

 return 0;
}
