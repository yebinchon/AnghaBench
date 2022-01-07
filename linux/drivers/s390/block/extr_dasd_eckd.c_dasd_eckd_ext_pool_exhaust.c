
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext_pool_exhaust_work_data {int worker; int * base; struct dasd_device* device; } ;
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int * basedev; TYPE_1__* block; } ;
struct TYPE_2__ {int * base; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int dasd_eckd_ext_pool_exhaust_work ;
 int dasd_get_device (struct dasd_device*) ;
 struct ext_pool_exhaust_work_data* kzalloc (int,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static int dasd_eckd_ext_pool_exhaust(struct dasd_device *device,
          struct dasd_ccw_req *cqr)
{
 struct ext_pool_exhaust_work_data *data;

 data = kzalloc(sizeof(*data), GFP_ATOMIC);
 if (!data)
  return -ENOMEM;
 INIT_WORK(&data->worker, dasd_eckd_ext_pool_exhaust_work);
 dasd_get_device(device);
 data->device = device;

 if (cqr->block)
  data->base = cqr->block->base;
 else if (cqr->basedev)
  data->base = cqr->basedev;
 else
  data->base = ((void*)0);

 schedule_work(&data->worker);

 return 0;
}
