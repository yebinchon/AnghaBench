
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {struct platform_device* pdev; int capture_sample; int send_event; } ;
struct TYPE_4__ {struct platform_device* pdev; struct hid_sensor_hub_device* hsdev; } ;
struct hid_time_state {int * rtc; TYPE_1__ callbacks; TYPE_2__ common_attributes; int comp_last_time; int lock_last_time; } ;
struct hid_sensor_hub_device {int hdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_USAGE_SENSOR_TIME ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 struct hid_sensor_hub_device* dev_get_platdata (int *) ;
 struct hid_time_state* devm_kzalloc (int *,int,int ) ;
 int * devm_rtc_device_register (int *,char*,int *,int ) ;
 int hid_device_io_start (int ) ;
 int hid_device_io_stop (int ) ;
 int hid_sensor_parse_common_attributes (struct hid_sensor_hub_device*,int ,TYPE_2__*) ;
 int hid_time_capture_sample ;
 int hid_time_parse_report (struct platform_device*,struct hid_sensor_hub_device*,int ,struct hid_time_state*) ;
 int hid_time_proc_event ;
 int hid_time_rtc_ops ;
 int init_completion (int *) ;
 int platform_set_drvdata (struct platform_device*,struct hid_time_state*) ;
 int sensor_hub_device_close (struct hid_sensor_hub_device*) ;
 int sensor_hub_device_open (struct hid_sensor_hub_device*) ;
 int sensor_hub_register_callback (struct hid_sensor_hub_device*,int ,TYPE_1__*) ;
 int sensor_hub_remove_callback (struct hid_sensor_hub_device*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int hid_time_probe(struct platform_device *pdev)
{
 int ret = 0;
 struct hid_sensor_hub_device *hsdev = dev_get_platdata(&pdev->dev);
 struct hid_time_state *time_state = devm_kzalloc(&pdev->dev,
  sizeof(struct hid_time_state), GFP_KERNEL);

 if (time_state == ((void*)0))
  return -ENOMEM;

 platform_set_drvdata(pdev, time_state);

 spin_lock_init(&time_state->lock_last_time);
 init_completion(&time_state->comp_last_time);
 time_state->common_attributes.hsdev = hsdev;
 time_state->common_attributes.pdev = pdev;

 ret = hid_sensor_parse_common_attributes(hsdev,
    HID_USAGE_SENSOR_TIME,
    &time_state->common_attributes);
 if (ret) {
  dev_err(&pdev->dev, "failed to setup common attributes!\n");
  return ret;
 }

 ret = hid_time_parse_report(pdev, hsdev, HID_USAGE_SENSOR_TIME,
     time_state);
 if (ret) {
  dev_err(&pdev->dev, "failed to setup attributes!\n");
  return ret;
 }

 time_state->callbacks.send_event = hid_time_proc_event;
 time_state->callbacks.capture_sample = hid_time_capture_sample;
 time_state->callbacks.pdev = pdev;
 ret = sensor_hub_register_callback(hsdev, HID_USAGE_SENSOR_TIME,
     &time_state->callbacks);
 if (ret < 0) {
  dev_err(&pdev->dev, "register callback failed!\n");
  return ret;
 }

 ret = sensor_hub_device_open(hsdev);
 if (ret) {
  dev_err(&pdev->dev, "failed to open sensor hub device!\n");
  goto err_open;
 }





 hid_device_io_start(hsdev->hdev);

 time_state->rtc = devm_rtc_device_register(&pdev->dev,
     "hid-sensor-time", &hid_time_rtc_ops,
     THIS_MODULE);

 if (IS_ERR(time_state->rtc)) {
  hid_device_io_stop(hsdev->hdev);
  ret = PTR_ERR(time_state->rtc);
  time_state->rtc = ((void*)0);
  dev_err(&pdev->dev, "rtc device register failed!\n");
  goto err_rtc;
 }

 return ret;

err_rtc:
 sensor_hub_device_close(hsdev);
err_open:
 sensor_hub_remove_callback(hsdev, HID_USAGE_SENSOR_TIME);
 return ret;
}
