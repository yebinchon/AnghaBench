
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xiaomi_wmi {unsigned int key_code; TYPE_1__* input_dev; } ;
struct wmi_device {int dev; } ;
struct TYPE_3__ {char* name; char* phys; int keybit; int evbit; } ;


 int EINVAL ;
 int ENOMEM ;
 unsigned int EV_KEY ;
 int GFP_KERNEL ;
 int dev_set_drvdata (int *,struct xiaomi_wmi*) ;
 TYPE_1__* devm_input_allocate_device (int *) ;
 struct xiaomi_wmi* devm_kzalloc (int *,int,int ) ;
 int input_register_device (TYPE_1__*) ;
 int set_bit (unsigned int,int ) ;

int xiaomi_wmi_probe(struct wmi_device *wdev, const void *context)
{
 struct xiaomi_wmi *data;

 if (wdev == ((void*)0) || context == ((void*)0))
  return -EINVAL;

 data = devm_kzalloc(&wdev->dev, sizeof(struct xiaomi_wmi), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;
 dev_set_drvdata(&wdev->dev, data);

 data->input_dev = devm_input_allocate_device(&wdev->dev);
 if (data->input_dev == ((void*)0))
  return -ENOMEM;
 data->input_dev->name = "Xiaomi WMI keys";
 data->input_dev->phys = "wmi/input0";

 data->key_code = *((const unsigned int *)context);
 set_bit(EV_KEY, data->input_dev->evbit);
 set_bit(data->key_code, data->input_dev->keybit);

 return input_register_device(data->input_dev);
}
