
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_rssd_lcq {int pool_count; struct dasd_ext_pool_sum* ext_pool_sum; } ;
struct dasd_ext_pool_sum {int pool_id; } ;
struct dasd_eckd_private {int eps; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;


 int dasd_eckd_ext_pool_id (struct dasd_device*) ;
 int memcpy (int *,struct dasd_ext_pool_sum*,int) ;

__attribute__((used)) static void dasd_eckd_cpy_ext_pool_data(struct dasd_device *device,
     struct dasd_rssd_lcq *lcq)
{
 struct dasd_eckd_private *private = device->private;
 int pool_id = dasd_eckd_ext_pool_id(device);
 struct dasd_ext_pool_sum eps;
 int i;

 for (i = 0; i < lcq->pool_count; i++) {
  eps = lcq->ext_pool_sum[i];
  if (eps.pool_id == pool_id) {
   memcpy(&private->eps, &eps,
          sizeof(struct dasd_ext_pool_sum));
  }
 }
}
