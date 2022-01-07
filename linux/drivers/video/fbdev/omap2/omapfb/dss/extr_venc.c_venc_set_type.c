
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int dummy; } ;
typedef enum omap_dss_venc_type { ____Placeholder_omap_dss_venc_type } omap_dss_venc_type ;
struct TYPE_2__ {int type; int venc_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ venc ;

__attribute__((used)) static void venc_set_type(struct omap_dss_device *dssdev,
  enum omap_dss_venc_type type)
{
 mutex_lock(&venc.venc_lock);

 venc.type = type;

 mutex_unlock(&venc.venc_lock);
}
