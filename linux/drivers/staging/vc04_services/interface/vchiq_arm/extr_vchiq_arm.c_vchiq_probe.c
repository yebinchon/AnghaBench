
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vchiq_drvdata {int fw; } ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int owner; } ;


 int EINVAL ;
 int ENOENT ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct device*) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int PTR_ERR (struct device*) ;
 int THIS_MODULE ;
 int VCHIQ_VERSION ;
 int VCHIQ_VERSION_MIN ;
 void* bcm2835_audio ;
 void* bcm2835_camera ;
 int cdev_add (TYPE_1__*,int ,int) ;
 int cdev_del (TYPE_1__*) ;
 int cdev_init (TYPE_1__*,int *) ;
 int dev_err (TYPE_2__*,char*) ;
 struct device* device_create (int ,TYPE_2__*,int ,int *,char*) ;
 int g_state ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int of_node_put (struct device_node*) ;
 int platform_set_drvdata (struct platform_device*,struct vchiq_drvdata*) ;
 int rpi_firmware_get (struct device_node*) ;
 int vchiq_arm_log_level ;
 TYPE_1__ vchiq_cdev ;
 int vchiq_class ;
 int vchiq_debugfs_init () ;
 int vchiq_devid ;
 int vchiq_fops ;
 int vchiq_log_error (int ,char*) ;
 int vchiq_log_info (int ,char*,int ,int ,int ,int ) ;
 int vchiq_log_warning (int ,char*) ;
 int vchiq_of_match ;
 int vchiq_platform_init (struct platform_device*,int *) ;
 void* vchiq_register_child (struct platform_device*,char*) ;

__attribute__((used)) static int vchiq_probe(struct platform_device *pdev)
{
 struct device_node *fw_node;
 const struct of_device_id *of_id;
 struct vchiq_drvdata *drvdata;
 struct device *vchiq_dev;
 int err;

 of_id = of_match_node(vchiq_of_match, pdev->dev.of_node);
 drvdata = (struct vchiq_drvdata *)of_id->data;
 if (!drvdata)
  return -EINVAL;

 fw_node = of_find_compatible_node(((void*)0), ((void*)0),
       "raspberrypi,bcm2835-firmware");
 if (!fw_node) {
  dev_err(&pdev->dev, "Missing firmware node\n");
  return -ENOENT;
 }

 drvdata->fw = rpi_firmware_get(fw_node);
 of_node_put(fw_node);
 if (!drvdata->fw)
  return -EPROBE_DEFER;

 platform_set_drvdata(pdev, drvdata);

 err = vchiq_platform_init(pdev, &g_state);
 if (err)
  goto failed_platform_init;

 cdev_init(&vchiq_cdev, &vchiq_fops);
 vchiq_cdev.owner = THIS_MODULE;
 err = cdev_add(&vchiq_cdev, vchiq_devid, 1);
 if (err) {
  vchiq_log_error(vchiq_arm_log_level,
   "Unable to register device");
  goto failed_platform_init;
 }

 vchiq_dev = device_create(vchiq_class, &pdev->dev, vchiq_devid, ((void*)0),
      "vchiq");
 if (IS_ERR(vchiq_dev)) {
  err = PTR_ERR(vchiq_dev);
  goto failed_device_create;
 }

 vchiq_debugfs_init();

 vchiq_log_info(vchiq_arm_log_level,
  "vchiq: initialised - version %d (min %d), device %d.%d",
  VCHIQ_VERSION, VCHIQ_VERSION_MIN,
  MAJOR(vchiq_devid), MINOR(vchiq_devid));

 bcm2835_camera = vchiq_register_child(pdev, "bcm2835-camera");
 bcm2835_audio = vchiq_register_child(pdev, "bcm2835_audio");

 return 0;

failed_device_create:
 cdev_del(&vchiq_cdev);
failed_platform_init:
 vchiq_log_warning(vchiq_arm_log_level, "could not load vchiq");
 return err;
}
