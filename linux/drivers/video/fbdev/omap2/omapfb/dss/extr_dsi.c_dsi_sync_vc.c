
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct dsi_data {TYPE_1__* vc; } ;
struct TYPE_2__ {int source; } ;


 int BUG () ;


 int EINVAL ;
 int WARN_ON (int) ;
 int dsi_bus_is_locked (struct platform_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_sync_vc_l4 (struct platform_device*,int) ;
 int dsi_sync_vc_vp (struct platform_device*,int) ;
 int dsi_vc_is_enabled (struct platform_device*,int) ;
 int in_interrupt () ;

__attribute__((used)) static int dsi_sync_vc(struct platform_device *dsidev, int channel)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 WARN_ON(!dsi_bus_is_locked(dsidev));

 WARN_ON(in_interrupt());

 if (!dsi_vc_is_enabled(dsidev, channel))
  return 0;

 switch (dsi->vc[channel].source) {
 case 128:
  return dsi_sync_vc_vp(dsidev, channel);
 case 129:
  return dsi_sync_vc_l4(dsidev, channel);
 default:
  BUG();
  return -EINVAL;
 }
}
