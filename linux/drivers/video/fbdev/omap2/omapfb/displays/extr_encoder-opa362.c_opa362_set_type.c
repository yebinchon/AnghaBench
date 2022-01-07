
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;
typedef enum omap_dss_venc_type { ____Placeholder_omap_dss_venc_type } omap_dss_venc_type ;


 int OMAP_DSS_VENC_TYPE_COMPOSITE ;
 int WARN_ON (int) ;

__attribute__((used)) static void opa362_set_type(struct omap_dss_device *dssdev,
  enum omap_dss_venc_type type)
{

 WARN_ON(type != OMAP_DSS_VENC_TYPE_COMPOSITE);

}
