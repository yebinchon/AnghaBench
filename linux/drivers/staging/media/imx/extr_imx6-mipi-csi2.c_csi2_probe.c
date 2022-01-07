
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v4l2_async_subdev {int dummy; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct TYPE_7__ {int function; int * ops; } ;
struct TYPE_8__ {int grp_id; TYPE_1__ entity; int name; int flags; int owner; int * dev; int * internal_ops; } ;
struct csi2_dev {int lock; void* pllref_clk; void* dphy_clk; TYPE_2__ sd; int base; void* pix_clk; int * dev; } ;


 int DEVICE_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IMX_MEDIA_GRP_ID_CSI2 ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int MEDIA_ENT_F_VID_IF_BRIDGE ;
 int PAGE_SIZE ;
 int PTR_ERR (void*) ;
 int THIS_MODULE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int csi2_entity_ops ;
 int csi2_internal_ops ;
 int csi2_parse_endpoint ;
 int csi2_subdev_ops ;
 void* devm_clk_get (int *,char*) ;
 int devm_ioremap (int *,int ,int ) ;
 struct csi2_dev* devm_kzalloc (int *,int,int ) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,TYPE_2__*) ;
 int strscpy (int ,int ,int) ;
 int v4l2_async_register_fwnode_subdev (TYPE_2__*,int,unsigned int*,int,int ) ;
 int v4l2_err (TYPE_2__*,char*) ;
 int v4l2_set_subdevdata (TYPE_2__*,int *) ;
 int v4l2_subdev_init (TYPE_2__*,int *) ;

__attribute__((used)) static int csi2_probe(struct platform_device *pdev)
{
 unsigned int sink_port = 0;
 struct csi2_dev *csi2;
 struct resource *res;
 int ret;

 csi2 = devm_kzalloc(&pdev->dev, sizeof(*csi2), GFP_KERNEL);
 if (!csi2)
  return -ENOMEM;

 csi2->dev = &pdev->dev;

 v4l2_subdev_init(&csi2->sd, &csi2_subdev_ops);
 v4l2_set_subdevdata(&csi2->sd, &pdev->dev);
 csi2->sd.internal_ops = &csi2_internal_ops;
 csi2->sd.entity.ops = &csi2_entity_ops;
 csi2->sd.dev = &pdev->dev;
 csi2->sd.owner = THIS_MODULE;
 csi2->sd.flags = V4L2_SUBDEV_FL_HAS_DEVNODE;
 strscpy(csi2->sd.name, DEVICE_NAME, sizeof(csi2->sd.name));
 csi2->sd.entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
 csi2->sd.grp_id = IMX_MEDIA_GRP_ID_CSI2;

 csi2->pllref_clk = devm_clk_get(&pdev->dev, "ref");
 if (IS_ERR(csi2->pllref_clk)) {
  v4l2_err(&csi2->sd, "failed to get pll reference clock\n");
  ret = PTR_ERR(csi2->pllref_clk);
  return ret;
 }

 csi2->dphy_clk = devm_clk_get(&pdev->dev, "dphy");
 if (IS_ERR(csi2->dphy_clk)) {
  v4l2_err(&csi2->sd, "failed to get dphy clock\n");
  ret = PTR_ERR(csi2->dphy_clk);
  return ret;
 }

 csi2->pix_clk = devm_clk_get(&pdev->dev, "pix");
 if (IS_ERR(csi2->pix_clk)) {
  v4l2_err(&csi2->sd, "failed to get pixel clock\n");
  ret = PTR_ERR(csi2->pix_clk);
  return ret;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  v4l2_err(&csi2->sd, "failed to get platform resources\n");
  return -ENODEV;
 }

 csi2->base = devm_ioremap(&pdev->dev, res->start, PAGE_SIZE);
 if (!csi2->base)
  return -ENOMEM;

 mutex_init(&csi2->lock);

 ret = clk_prepare_enable(csi2->pllref_clk);
 if (ret) {
  v4l2_err(&csi2->sd, "failed to enable pllref_clk\n");
  goto rmmutex;
 }

 ret = clk_prepare_enable(csi2->dphy_clk);
 if (ret) {
  v4l2_err(&csi2->sd, "failed to enable dphy_clk\n");
  goto pllref_off;
 }

 platform_set_drvdata(pdev, &csi2->sd);

 ret = v4l2_async_register_fwnode_subdev(
  &csi2->sd, sizeof(struct v4l2_async_subdev),
  &sink_port, 1, csi2_parse_endpoint);
 if (ret)
  goto dphy_off;

 return 0;

dphy_off:
 clk_disable_unprepare(csi2->dphy_clk);
pllref_off:
 clk_disable_unprepare(csi2->pllref_clk);
rmmutex:
 mutex_destroy(&csi2->lock);
 return ret;
}
