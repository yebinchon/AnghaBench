
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct check_attention_work_data {int worker; int lpum; struct dasd_device* device; } ;
typedef int __u8 ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int dasd_eckd_check_attention_work ;
 int dasd_get_device (struct dasd_device*) ;
 struct check_attention_work_data* kzalloc (int,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static int dasd_eckd_check_attention(struct dasd_device *device, __u8 lpum)
{
 struct check_attention_work_data *data;

 data = kzalloc(sizeof(*data), GFP_ATOMIC);
 if (!data)
  return -ENOMEM;
 INIT_WORK(&data->worker, dasd_eckd_check_attention_work);
 dasd_get_device(device);
 data->device = device;
 data->lpum = lpum;
 schedule_work(&data->worker);
 return 0;
}
