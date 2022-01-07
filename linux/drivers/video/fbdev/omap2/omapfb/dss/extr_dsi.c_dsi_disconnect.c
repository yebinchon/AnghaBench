
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {scalar_t__ manager; struct omap_dss_device* dst; } ;


 int WARN_ON (int) ;
 int dss_mgr_disconnect (scalar_t__,struct omap_dss_device*) ;
 int omapdss_output_unset_device (struct omap_dss_device*) ;

__attribute__((used)) static void dsi_disconnect(struct omap_dss_device *dssdev,
  struct omap_dss_device *dst)
{
 WARN_ON(dst != dssdev->dst);

 if (dst != dssdev->dst)
  return;

 omapdss_output_unset_device(dssdev);

 if (dssdev->manager)
  dss_mgr_disconnect(dssdev->manager, dssdev);
}
