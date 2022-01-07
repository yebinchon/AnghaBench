
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct resource {int start; } ;
struct TYPE_7__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int base; struct platform_device* pdev; scalar_t__ wss_data; int venc_lock; } ;


 int DSSERR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int VENC_REV_ID ;
 int dev_dbg (TYPE_2__*,char*,scalar_t__) ;
 int devm_ioremap (TYPE_2__*,int ,int ) ;
 int dss_debugfs_create_file (char*,int ) ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int resource_size (struct resource*) ;
 struct platform_device* to_platform_device (struct device*) ;
 TYPE_1__ venc ;
 int venc_dump_regs ;
 int venc_get_clocks (struct platform_device*) ;
 int venc_init_output (struct platform_device*) ;
 int venc_probe_of (struct platform_device*) ;
 int venc_read_reg (int ) ;
 int venc_runtime_get () ;
 int venc_runtime_put () ;

__attribute__((used)) static int venc_bind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 u8 rev_id;
 struct resource *venc_mem;
 int r;

 venc.pdev = pdev;

 mutex_init(&venc.venc_lock);

 venc.wss_data = 0;

 venc_mem = platform_get_resource(venc.pdev, IORESOURCE_MEM, 0);
 if (!venc_mem) {
  DSSERR("can't get IORESOURCE_MEM VENC\n");
  return -EINVAL;
 }

 venc.base = devm_ioremap(&pdev->dev, venc_mem->start,
     resource_size(venc_mem));
 if (!venc.base) {
  DSSERR("can't ioremap VENC\n");
  return -ENOMEM;
 }

 r = venc_get_clocks(pdev);
 if (r)
  return r;

 pm_runtime_enable(&pdev->dev);

 r = venc_runtime_get();
 if (r)
  goto err_runtime_get;

 rev_id = (u8)(venc_read_reg(VENC_REV_ID) & 0xff);
 dev_dbg(&pdev->dev, "OMAP VENC rev %d\n", rev_id);

 venc_runtime_put();

 if (pdev->dev.of_node) {
  r = venc_probe_of(pdev);
  if (r) {
   DSSERR("Invalid DT data\n");
   goto err_probe_of;
  }
 }

 dss_debugfs_create_file("venc", venc_dump_regs);

 venc_init_output(pdev);

 return 0;

err_probe_of:
err_runtime_get:
 pm_runtime_disable(&pdev->dev);
 return r;
}
