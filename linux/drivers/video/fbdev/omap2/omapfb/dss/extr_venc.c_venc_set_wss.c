
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct venc_config {int bstamp_wss_data; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int wss_data; int venc_lock; int timings; } ;


 int DSSDBG (char*) ;
 int VENC_BSTAMP_WSS_DATA ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ venc ;
 int venc_runtime_get () ;
 int venc_runtime_put () ;
 struct venc_config* venc_timings_to_config (int *) ;
 int venc_write_reg (int ,int) ;

__attribute__((used)) static int venc_set_wss(struct omap_dss_device *dssdev, u32 wss)
{
 const struct venc_config *config;
 int r;

 DSSDBG("venc_set_wss\n");

 mutex_lock(&venc.venc_lock);

 config = venc_timings_to_config(&venc.timings);


 venc.wss_data = (wss ^ 0xfffff) << 8;

 r = venc_runtime_get();
 if (r)
  goto err;

 venc_write_reg(VENC_BSTAMP_WSS_DATA, config->bstamp_wss_data |
   venc.wss_data);

 venc_runtime_put();

err:
 mutex_unlock(&venc.venc_lock);

 return r;
}
