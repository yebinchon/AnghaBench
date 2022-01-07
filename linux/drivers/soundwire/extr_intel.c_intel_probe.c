
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {scalar_t__ hw_disabled; } ;
struct TYPE_14__ {int link_id; TYPE_1__ prop; TYPE_2__* ops; int * dev; } ;
struct TYPE_15__ {TYPE_3__ bus; int * dev; scalar_t__ msg_count; int instance; int registers; } ;
struct sdw_intel {TYPE_4__ cdns; TYPE_10__* res; int instance; } ;
struct sdw_cdns_stream_config {int dummy; } ;
struct platform_device {int dev; int id; } ;
struct TYPE_13__ {int read_prop; } ;
struct TYPE_11__ {int irq; int registers; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 int dev_err (int *,char*,int) ;
 TYPE_10__* dev_get_platdata (int *) ;
 int dev_info (int *,char*,int ) ;
 struct sdw_intel* devm_kzalloc (int *,int,int ) ;
 int free_irq (int,struct sdw_intel*) ;
 int intel_debugfs_init (struct sdw_intel*) ;
 int intel_link_power_up (struct sdw_intel*) ;
 int intel_pdi_ch_update (struct sdw_intel*) ;
 int intel_pdi_init (struct sdw_intel*,struct sdw_cdns_stream_config*) ;
 int intel_prop_read ;
 int intel_register_dai (struct sdw_intel*) ;
 int intel_shim_init (struct sdw_intel*) ;
 int platform_set_drvdata (struct platform_device*,struct sdw_intel*) ;
 int request_threaded_irq (int,int ,int ,int ,int ,TYPE_4__*) ;
 int sdw_add_bus_master (TYPE_3__*) ;
 int sdw_cdns_enable_interrupt (TYPE_4__*) ;
 int sdw_cdns_init (TYPE_4__*) ;
 int sdw_cdns_irq ;
 int sdw_cdns_pdi_init (TYPE_4__*,struct sdw_cdns_stream_config) ;
 int sdw_cdns_probe (TYPE_4__*) ;
 int sdw_cdns_thread ;
 int sdw_delete_bus_master (TYPE_3__*) ;
 TYPE_2__ sdw_intel_ops ;
 int snd_soc_unregister_component (int *) ;

__attribute__((used)) static int intel_probe(struct platform_device *pdev)
{
 struct sdw_cdns_stream_config config;
 struct sdw_intel *sdw;
 int ret;

 sdw = devm_kzalloc(&pdev->dev, sizeof(*sdw), GFP_KERNEL);
 if (!sdw)
  return -ENOMEM;

 sdw->instance = pdev->id;
 sdw->res = dev_get_platdata(&pdev->dev);
 sdw->cdns.dev = &pdev->dev;
 sdw->cdns.registers = sdw->res->registers;
 sdw->cdns.instance = sdw->instance;
 sdw->cdns.msg_count = 0;
 sdw->cdns.bus.dev = &pdev->dev;
 sdw->cdns.bus.link_id = pdev->id;

 sdw_cdns_probe(&sdw->cdns);


 sdw_intel_ops.read_prop = intel_prop_read;
 sdw->cdns.bus.ops = &sdw_intel_ops;

 platform_set_drvdata(pdev, sdw);

 ret = sdw_add_bus_master(&sdw->cdns.bus);
 if (ret) {
  dev_err(&pdev->dev, "sdw_add_bus_master fail: %d\n", ret);
  goto err_master_reg;
 }

 if (sdw->cdns.bus.prop.hw_disabled) {
  dev_info(&pdev->dev, "SoundWire master %d is disabled, ignoring\n",
    sdw->cdns.bus.link_id);
  return 0;
 }


 intel_link_power_up(sdw);
 intel_shim_init(sdw);

 ret = sdw_cdns_init(&sdw->cdns);
 if (ret)
  goto err_init;

 ret = sdw_cdns_enable_interrupt(&sdw->cdns);


 intel_pdi_init(sdw, &config);
 ret = sdw_cdns_pdi_init(&sdw->cdns, config);
 if (ret)
  goto err_init;

 intel_pdi_ch_update(sdw);


 ret = request_threaded_irq(sdw->res->irq, sdw_cdns_irq, sdw_cdns_thread,
       IRQF_SHARED, KBUILD_MODNAME, &sdw->cdns);
 if (ret < 0) {
  dev_err(sdw->cdns.dev, "unable to grab IRQ %d, disabling device\n",
   sdw->res->irq);
  goto err_init;
 }


 ret = intel_register_dai(sdw);
 if (ret) {
  dev_err(sdw->cdns.dev, "DAI registration failed: %d\n", ret);
  snd_soc_unregister_component(sdw->cdns.dev);
  goto err_dai;
 }

 intel_debugfs_init(sdw);

 return 0;

err_dai:
 free_irq(sdw->res->irq, sdw);
err_init:
 sdw_delete_bus_master(&sdw->cdns.bus);
err_master_reg:
 return ret;
}
