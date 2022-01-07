
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_verification_work_data {int isglobal; int worker; int tbvpm; struct dasd_device* device; } ;
struct dasd_device {int dummy; } ;
typedef int __u8 ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int INIT_WORK (int *,int ) ;
 int dasd_get_device (struct dasd_device*) ;
 int dasd_path_verification_mutex ;
 int do_path_verification_work ;
 struct path_verification_work_data* kmalloc (int,int) ;
 int memset (struct path_verification_work_data*,int ,int) ;
 scalar_t__ mutex_trylock (int *) ;
 struct path_verification_work_data* path_verification_worker ;
 int schedule_work (int *) ;

__attribute__((used)) static int dasd_eckd_verify_path(struct dasd_device *device, __u8 lpm)
{
 struct path_verification_work_data *data;

 data = kmalloc(sizeof(*data), GFP_ATOMIC | GFP_DMA);
 if (!data) {
  if (mutex_trylock(&dasd_path_verification_mutex)) {
   data = path_verification_worker;
   data->isglobal = 1;
  } else
   return -ENOMEM;
 } else {
  memset(data, 0, sizeof(*data));
  data->isglobal = 0;
 }
 INIT_WORK(&data->worker, do_path_verification_work);
 dasd_get_device(device);
 data->device = device;
 data->tbvpm = lpm;
 schedule_work(&data->worker);
 return 0;
}
