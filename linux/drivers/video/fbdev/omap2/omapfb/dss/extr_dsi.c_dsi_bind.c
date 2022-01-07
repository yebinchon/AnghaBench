
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int u32 ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_14__ {scalar_t__ of_node; } ;
struct platform_device {int id; TYPE_2__ dev; } ;
struct of_device_id {struct dsi_module_id_data* data; } ;
struct dsi_module_id_data {scalar_t__ address; int id; } ;
struct TYPE_13__ {int last_reset; } ;
struct dsi_data {scalar_t__ irq; int module_id; int num_lanes_supported; int line_buffer_size; TYPE_11__* vc; struct platform_device* pdev; void* pll_base; void* phy_base; void* proto_base; int te_timer; int framedone_timeout_work; int bus_lock; int lock; TYPE_1__ irq_stats; int irq_stats_lock; scalar_t__ errors; int errors_lock; int irq_lock; } ;
struct device {int dummy; } ;
struct TYPE_12__ {scalar_t__ vc_id; int * dssdev; int source; } ;


 int ARRAY_SIZE (TYPE_11__*) ;
 int DSI_GNQ ;
 scalar_t__ DSI_PHY_OFFSET ;
 scalar_t__ DSI_PHY_SZ ;
 scalar_t__ DSI_PLL_OFFSET ;
 scalar_t__ DSI_PLL_SZ ;
 scalar_t__ DSI_PROTO_SZ ;
 int DSI_REVISION ;
 int DSI_VC_SOURCE_L4 ;
 int DSSERR (char*,...) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int FEAT_DSI_GNQ ;
 int FLD_GET (int ,int,int) ;
 int GFP_KERNEL ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 int REG_GET (struct platform_device*,int ,int,int) ;
 int dev_dbg (TYPE_2__*,char*,int ,int ) ;
 int dev_name (TYPE_2__*) ;
 int dev_set_drvdata (TYPE_2__*,struct dsi_data*) ;
 void* devm_ioremap (TYPE_2__*,scalar_t__,int ) ;
 struct dsi_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_irq (TYPE_2__*,scalar_t__,int ,int ,int ,struct platform_device*) ;
 int dsi1_dump_irqs ;
 int dsi1_dump_regs ;
 int dsi2_dump_irqs ;
 int dsi2_dump_regs ;
 int dsi_framedone_timeout_work_callback ;
 int dsi_get_clocks (struct platform_device*) ;
 int dsi_get_line_buf_size (struct platform_device*) ;
 int dsi_init_output (struct platform_device*) ;
 int dsi_init_pll_data (struct platform_device*) ;
 int dsi_of_match ;
 int dsi_probe_of (struct platform_device*) ;
 int dsi_read_reg (struct platform_device*,int ) ;
 int dsi_runtime_get (struct platform_device*) ;
 int dsi_runtime_put (struct platform_device*) ;
 int dsi_te_timeout ;
 int dsi_uninit_output (struct platform_device*) ;
 int dss_debugfs_create_file (char*,int ) ;
 scalar_t__ dss_has_feature (int ) ;
 int jiffies ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_node (int ,scalar_t__) ;
 int of_platform_populate (scalar_t__,int *,int *,TYPE_2__*) ;
 int omap_dsi_irq_handler ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int resource_size (struct resource*) ;
 int sema_init (int *,int) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int dsi_bind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *dsidev = to_platform_device(dev);
 u32 rev;
 int r, i;
 struct dsi_data *dsi;
 struct resource *dsi_mem;
 struct resource *res;
 struct resource temp_res;

 dsi = devm_kzalloc(&dsidev->dev, sizeof(*dsi), GFP_KERNEL);
 if (!dsi)
  return -ENOMEM;

 dsi->pdev = dsidev;
 dev_set_drvdata(&dsidev->dev, dsi);

 spin_lock_init(&dsi->irq_lock);
 spin_lock_init(&dsi->errors_lock);
 dsi->errors = 0;






 mutex_init(&dsi->lock);
 sema_init(&dsi->bus_lock, 1);

 INIT_DEFERRABLE_WORK(&dsi->framedone_timeout_work,
        dsi_framedone_timeout_work_callback);





 res = platform_get_resource_byname(dsidev, IORESOURCE_MEM, "proto");
 if (!res) {
  res = platform_get_resource(dsidev, IORESOURCE_MEM, 0);
  if (!res) {
   DSSERR("can't get IORESOURCE_MEM DSI\n");
   return -EINVAL;
  }

  temp_res.start = res->start;
  temp_res.end = temp_res.start + DSI_PROTO_SZ - 1;
  res = &temp_res;
 }

 dsi_mem = res;

 dsi->proto_base = devm_ioremap(&dsidev->dev, res->start,
  resource_size(res));
 if (!dsi->proto_base) {
  DSSERR("can't ioremap DSI protocol engine\n");
  return -ENOMEM;
 }

 res = platform_get_resource_byname(dsidev, IORESOURCE_MEM, "phy");
 if (!res) {
  res = platform_get_resource(dsidev, IORESOURCE_MEM, 0);
  if (!res) {
   DSSERR("can't get IORESOURCE_MEM DSI\n");
   return -EINVAL;
  }

  temp_res.start = res->start + DSI_PHY_OFFSET;
  temp_res.end = temp_res.start + DSI_PHY_SZ - 1;
  res = &temp_res;
 }

 dsi->phy_base = devm_ioremap(&dsidev->dev, res->start,
  resource_size(res));
 if (!dsi->phy_base) {
  DSSERR("can't ioremap DSI PHY\n");
  return -ENOMEM;
 }

 res = platform_get_resource_byname(dsidev, IORESOURCE_MEM, "pll");
 if (!res) {
  res = platform_get_resource(dsidev, IORESOURCE_MEM, 0);
  if (!res) {
   DSSERR("can't get IORESOURCE_MEM DSI\n");
   return -EINVAL;
  }

  temp_res.start = res->start + DSI_PLL_OFFSET;
  temp_res.end = temp_res.start + DSI_PLL_SZ - 1;
  res = &temp_res;
 }

 dsi->pll_base = devm_ioremap(&dsidev->dev, res->start,
  resource_size(res));
 if (!dsi->pll_base) {
  DSSERR("can't ioremap DSI PLL\n");
  return -ENOMEM;
 }

 dsi->irq = platform_get_irq(dsi->pdev, 0);
 if (dsi->irq < 0) {
  DSSERR("platform_get_irq failed\n");
  return -ENODEV;
 }

 r = devm_request_irq(&dsidev->dev, dsi->irq, omap_dsi_irq_handler,
        IRQF_SHARED, dev_name(&dsidev->dev), dsi->pdev);
 if (r < 0) {
  DSSERR("request_irq failed\n");
  return r;
 }

 if (dsidev->dev.of_node) {
  const struct of_device_id *match;
  const struct dsi_module_id_data *d;

  match = of_match_node(dsi_of_match, dsidev->dev.of_node);
  if (!match) {
   DSSERR("unsupported DSI module\n");
   return -ENODEV;
  }

  d = match->data;

  while (d->address != 0 && d->address != dsi_mem->start)
   d++;

  if (d->address == 0) {
   DSSERR("unsupported DSI module\n");
   return -ENODEV;
  }

  dsi->module_id = d->id;
 } else {
  dsi->module_id = dsidev->id;
 }


 for (i = 0; i < ARRAY_SIZE(dsi->vc); i++) {
  dsi->vc[i].source = DSI_VC_SOURCE_L4;
  dsi->vc[i].dssdev = ((void*)0);
  dsi->vc[i].vc_id = 0;
 }

 r = dsi_get_clocks(dsidev);
 if (r)
  return r;

 dsi_init_pll_data(dsidev);

 pm_runtime_enable(&dsidev->dev);

 r = dsi_runtime_get(dsidev);
 if (r)
  goto err_runtime_get;

 rev = dsi_read_reg(dsidev, DSI_REVISION);
 dev_dbg(&dsidev->dev, "OMAP DSI rev %d.%d\n",
        FLD_GET(rev, 7, 4), FLD_GET(rev, 3, 0));



 if (dss_has_feature(FEAT_DSI_GNQ))

  dsi->num_lanes_supported = 1 + REG_GET(dsidev, DSI_GNQ, 11, 9);
 else
  dsi->num_lanes_supported = 3;

 dsi->line_buffer_size = dsi_get_line_buf_size(dsidev);

 dsi_init_output(dsidev);

 if (dsidev->dev.of_node) {
  r = dsi_probe_of(dsidev);
  if (r) {
   DSSERR("Invalid DSI DT data\n");
   goto err_probe_of;
  }

  r = of_platform_populate(dsidev->dev.of_node, ((void*)0), ((void*)0),
   &dsidev->dev);
  if (r)
   DSSERR("Failed to populate DSI child devices: %d\n", r);
 }

 dsi_runtime_put(dsidev);

 if (dsi->module_id == 0)
  dss_debugfs_create_file("dsi1_regs", dsi1_dump_regs);
 else if (dsi->module_id == 1)
  dss_debugfs_create_file("dsi2_regs", dsi2_dump_regs);
 return 0;

err_probe_of:
 dsi_uninit_output(dsidev);
 dsi_runtime_put(dsidev);

err_runtime_get:
 pm_runtime_disable(&dsidev->dev);
 return r;
}
