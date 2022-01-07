
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_info {int version; } ;
struct firmware {int size; int data; } ;
struct TYPE_4__ {char const* num; } ;
struct allegro_dev {int * m2m_dev; TYPE_2__ video_dev; int v4l2_dev; TYPE_1__* plat_dev; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ IS_ERR (int *) ;
 int allegro_copy_firmware (struct allegro_dev*,int ,int ) ;
 int allegro_copy_fw_codec (struct allegro_dev*,int ,int ) ;
 int allegro_free_fw_codec (struct allegro_dev*) ;
 struct fw_info* allegro_get_firmware_info (struct allegro_dev*,struct firmware const*,struct firmware const*) ;
 int allegro_m2m_ops ;
 int allegro_mcu_hw_deinit (struct allegro_dev*) ;
 int allegro_mcu_hw_init (struct allegro_dev*,struct fw_info const*) ;
 int allegro_mcu_reset (struct allegro_dev*) ;
 int allegro_register_device (struct allegro_dev*) ;
 int debug ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;
 int v4l2_dbg (int,int ,int *,char*,char const*) ;
 int v4l2_err (int *,char*) ;
 int v4l2_info (int *,char*,int ) ;
 int * v4l2_m2m_init (int *) ;
 int v4l2_m2m_release (int *) ;

__attribute__((used)) static void allegro_fw_callback(const struct firmware *fw, void *context)
{
 struct allegro_dev *dev = context;
 const char *fw_codec_name = "al5e.fw";
 const struct firmware *fw_codec;
 int err;
 const struct fw_info *info;

 if (!fw)
  return;

 v4l2_dbg(1, debug, &dev->v4l2_dev,
   "requesting codec firmware '%s'\n", fw_codec_name);
 err = request_firmware(&fw_codec, fw_codec_name, &dev->plat_dev->dev);
 if (err)
  goto err_release_firmware;

 info = allegro_get_firmware_info(dev, fw, fw_codec);
 if (!info) {
  v4l2_err(&dev->v4l2_dev, "firmware is not supported\n");
  goto err_release_firmware_codec;
 }

 v4l2_info(&dev->v4l2_dev,
    "using mcu firmware version '%s'\n", info->version);


 err = allegro_mcu_reset(dev);
 if (err) {
  v4l2_err(&dev->v4l2_dev, "failed to reset mcu\n");
  goto err_release_firmware_codec;
 }

 allegro_copy_firmware(dev, fw->data, fw->size);
 allegro_copy_fw_codec(dev, fw_codec->data, fw_codec->size);

 err = allegro_mcu_hw_init(dev, info);
 if (err) {
  v4l2_err(&dev->v4l2_dev, "failed to initialize mcu\n");
  goto err_free_fw_codec;
 }

 dev->m2m_dev = v4l2_m2m_init(&allegro_m2m_ops);
 if (IS_ERR(dev->m2m_dev)) {
  v4l2_err(&dev->v4l2_dev, "failed to init mem2mem device\n");
  goto err_mcu_hw_deinit;
 }

 err = allegro_register_device(dev);
 if (err) {
  v4l2_err(&dev->v4l2_dev, "failed to register video device\n");
  goto err_m2m_release;
 }

 v4l2_dbg(1, debug, &dev->v4l2_dev,
   "allegro codec registered as /dev/video%d\n",
   dev->video_dev.num);

 release_firmware(fw_codec);
 release_firmware(fw);

 return;

err_m2m_release:
 v4l2_m2m_release(dev->m2m_dev);
 dev->m2m_dev = ((void*)0);
err_mcu_hw_deinit:
 allegro_mcu_hw_deinit(dev);
err_free_fw_codec:
 allegro_free_fw_codec(dev);
err_release_firmware_codec:
 release_firmware(fw_codec);
err_release_firmware:
 release_firmware(fw);
}
