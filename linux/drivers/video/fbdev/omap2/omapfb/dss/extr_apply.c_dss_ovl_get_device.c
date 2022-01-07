
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay {scalar_t__ manager; } ;
struct omap_dss_device {int dummy; } ;


 struct omap_dss_device* dss_mgr_get_device (scalar_t__) ;

__attribute__((used)) static struct omap_dss_device *dss_ovl_get_device(struct omap_overlay *ovl)
{
 return ovl->manager ? dss_mgr_get_device(ovl->manager) : ((void*)0);
}
