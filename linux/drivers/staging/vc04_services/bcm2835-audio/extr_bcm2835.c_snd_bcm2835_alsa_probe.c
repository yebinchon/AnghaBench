
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 scalar_t__ MAX_SUBSTREAMS ;
 int bcm2835_devm_add_vchi_ctx (struct device*) ;
 int dev_warn (struct device*,char*,scalar_t__) ;
 scalar_t__ num_channels ;
 int snd_add_child_devices (struct device*,scalar_t__) ;

__attribute__((used)) static int snd_bcm2835_alsa_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int err;

 if (num_channels <= 0 || num_channels > MAX_SUBSTREAMS) {
  num_channels = MAX_SUBSTREAMS;
  dev_warn(dev, "Illegal num_channels value, will use %u\n",
    num_channels);
 }

 err = bcm2835_devm_add_vchi_ctx(dev);
 if (err)
  return err;

 err = snd_add_child_devices(dev, num_channels);
 if (err)
  return err;

 return 0;
}
