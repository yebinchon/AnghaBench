
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int* feature; } ;
struct dasd_eckd_private {TYPE_2__ features; TYPE_1__* gneq; } ;
struct dasd_device {TYPE_4__* cdev; struct dasd_eckd_private* private; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int fcx; } ;
struct TYPE_5__ {int* reserved2; } ;


 int FCX_MAX_DATA_FACTOR ;
 int ccw_device_get_mdc (TYPE_4__*,int ) ;
 TYPE_3__ css_general_characteristics ;
 scalar_t__ dasd_nofcx ;
 int dev_warn (int *,char*) ;

__attribute__((used)) static u32 get_fcx_max_data(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 int fcx_in_css, fcx_in_gneq, fcx_in_features;
 int tpm, mdc;

 if (dasd_nofcx)
  return 0;

 fcx_in_css = css_general_characteristics.fcx;
 fcx_in_gneq = private->gneq->reserved2[7] & 0x04;
 fcx_in_features = private->features.feature[40] & 0x80;
 tpm = fcx_in_css && fcx_in_gneq && fcx_in_features;

 if (!tpm)
  return 0;

 mdc = ccw_device_get_mdc(device->cdev, 0);
 if (mdc < 0) {
  dev_warn(&device->cdev->dev, "Detecting the maximum supported data size for zHPF requests failed\n");
  return 0;
 } else {
  return (u32)mdc * FCX_MAX_DATA_FACTOR;
 }
}
