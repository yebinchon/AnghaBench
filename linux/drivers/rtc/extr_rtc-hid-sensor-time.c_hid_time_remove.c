
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct hid_sensor_hub_device {int dummy; } ;


 int HID_USAGE_SENSOR_TIME ;
 struct hid_sensor_hub_device* dev_get_platdata (int *) ;
 int sensor_hub_device_close (struct hid_sensor_hub_device*) ;
 int sensor_hub_remove_callback (struct hid_sensor_hub_device*,int ) ;

__attribute__((used)) static int hid_time_remove(struct platform_device *pdev)
{
 struct hid_sensor_hub_device *hsdev = dev_get_platdata(&pdev->dev);

 sensor_hub_device_close(hsdev);
 sensor_hub_remove_callback(hsdev, HID_USAGE_SENSOR_TIME);

 return 0;
}
