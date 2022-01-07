
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hw_disabled; } ;
struct TYPE_8__ {TYPE_1__ prop; } ;
struct TYPE_7__ {TYPE_4__ bus; int dev; } ;
struct sdw_intel {TYPE_3__ cdns; TYPE_2__* res; } ;
struct platform_device {int dummy; } ;
struct TYPE_6__ {int irq; } ;


 int free_irq (int ,struct sdw_intel*) ;
 int intel_debugfs_exit (struct sdw_intel*) ;
 struct sdw_intel* platform_get_drvdata (struct platform_device*) ;
 int sdw_delete_bus_master (TYPE_4__*) ;
 int snd_soc_unregister_component (int ) ;

__attribute__((used)) static int intel_remove(struct platform_device *pdev)
{
 struct sdw_intel *sdw;

 sdw = platform_get_drvdata(pdev);

 if (!sdw->cdns.bus.prop.hw_disabled) {
  intel_debugfs_exit(sdw);
  free_irq(sdw->res->irq, sdw);
  snd_soc_unregister_component(sdw->cdns.dev);
 }
 sdw_delete_bus_master(&sdw->cdns.bus);

 return 0;
}
