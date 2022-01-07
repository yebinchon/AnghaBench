
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int device_caps; int * lock; int * v4l2_dev; int vfl_dir; int * ioctl_ops; int * fops; int (* release ) (struct video_device*) ;int name; } ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int data; } ;
struct amvdec_core {int lock; int v4l2_dev; struct device* dev_dec; struct video_device* vdev_dec; int platform; struct device* dev; void* vdec_hevc_clk; void* vdec_1_clk; void* dos_clk; void* dos_parser_clk; void* canvas; void* regmap_ao; void* esparser_base; void* dos_base; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_M2M_MPLANE ;
 int VFL_DIR_M2M ;
 int VFL_TYPE_GRABBER ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct amvdec_core* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int ,int ,int ,char*,struct amvdec_core*) ;
 int esparser_init (struct platform_device*,struct amvdec_core*) ;
 void* meson_canvas_get (struct device*) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct amvdec_core*) ;
 int strscpy (int ,char*,int) ;
 void* syscon_regmap_lookup_by_phandle (int ,char*) ;
 int v4l2_device_register (struct device*,int *) ;
 int vdec_dt_match ;
 int vdec_fops ;
 int vdec_ioctl_ops ;
 int vdec_isr ;
 int vdec_threaded_isr ;
 struct video_device* video_device_alloc () ;
 int video_device_release (struct video_device*) ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct amvdec_core*) ;

__attribute__((used)) static int vdec_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct video_device *vdev;
 struct amvdec_core *core;
 struct resource *r;
 const struct of_device_id *of_id;
 int irq;
 int ret;

 core = devm_kzalloc(dev, sizeof(*core), GFP_KERNEL);
 if (!core)
  return -ENOMEM;

 core->dev = dev;
 platform_set_drvdata(pdev, core);

 r = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dos");
 core->dos_base = devm_ioremap_resource(dev, r);
 if (IS_ERR(core->dos_base)) {
  dev_err(dev, "Couldn't remap DOS memory\n");
  return PTR_ERR(core->dos_base);
 }

 r = platform_get_resource_byname(pdev, IORESOURCE_MEM, "esparser");
 core->esparser_base = devm_ioremap_resource(dev, r);
 if (IS_ERR(core->esparser_base)) {
  dev_err(dev, "Couldn't remap ESPARSER memory\n");
  return PTR_ERR(core->esparser_base);
 }

 core->regmap_ao =
  syscon_regmap_lookup_by_phandle(dev->of_node,
      "amlogic,ao-sysctrl");
 if (IS_ERR(core->regmap_ao)) {
  dev_err(dev, "Couldn't regmap AO sysctrl\n");
  return PTR_ERR(core->regmap_ao);
 }

 core->canvas = meson_canvas_get(dev);
 if (IS_ERR(core->canvas))
  return PTR_ERR(core->canvas);

 core->dos_parser_clk = devm_clk_get(dev, "dos_parser");
 if (IS_ERR(core->dos_parser_clk))
  return -EPROBE_DEFER;

 core->dos_clk = devm_clk_get(dev, "dos");
 if (IS_ERR(core->dos_clk))
  return -EPROBE_DEFER;

 core->vdec_1_clk = devm_clk_get(dev, "vdec_1");
 if (IS_ERR(core->vdec_1_clk))
  return -EPROBE_DEFER;

 core->vdec_hevc_clk = devm_clk_get(dev, "vdec_hevc");
 if (IS_ERR(core->vdec_hevc_clk))
  return -EPROBE_DEFER;

 irq = platform_get_irq_byname(pdev, "vdec");
 if (irq < 0)
  return irq;

 ret = devm_request_threaded_irq(core->dev, irq, vdec_isr,
     vdec_threaded_isr, IRQF_ONESHOT,
     "vdec", core);
 if (ret)
  return ret;

 ret = esparser_init(pdev, core);
 if (ret)
  return ret;

 ret = v4l2_device_register(dev, &core->v4l2_dev);
 if (ret) {
  dev_err(dev, "Couldn't register v4l2 device\n");
  return -ENOMEM;
 }

 vdev = video_device_alloc();
 if (!vdev) {
  ret = -ENOMEM;
  goto err_vdev_release;
 }

 of_id = of_match_node(vdec_dt_match, dev->of_node);
 core->platform = of_id->data;
 core->vdev_dec = vdev;
 core->dev_dec = dev;
 mutex_init(&core->lock);

 strscpy(vdev->name, "meson-video-decoder", sizeof(vdev->name));
 vdev->release = video_device_release;
 vdev->fops = &vdec_fops;
 vdev->ioctl_ops = &vdec_ioctl_ops;
 vdev->vfl_dir = VFL_DIR_M2M;
 vdev->v4l2_dev = &core->v4l2_dev;
 vdev->lock = &core->lock;
 vdev->device_caps = V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_STREAMING;

 video_set_drvdata(vdev, core);

 ret = video_register_device(vdev, VFL_TYPE_GRABBER, -1);
 if (ret) {
  dev_err(dev, "Failed registering video device\n");
  goto err_vdev_release;
 }

 return 0;

err_vdev_release:
 video_device_release(vdev);
 return ret;
}
