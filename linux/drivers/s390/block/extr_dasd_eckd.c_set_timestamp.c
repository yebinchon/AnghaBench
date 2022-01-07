
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int XRC_supported; } ;
struct TYPE_4__ {TYPE_1__ facilities; } ;
struct dasd_eckd_private {TYPE_2__ rdc_data; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;
struct ccw1 {int count; int flags; } ;
struct DE_eckd_data {int ga_extended; int ep_sys_time; } ;


 int CCW_FLAG_SLI ;
 int EACCES ;
 int EOPNOTSUPP ;
 int get_phys_clock (int *) ;

__attribute__((used)) static int set_timestamp(struct ccw1 *ccw, struct DE_eckd_data *data,
       struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 int rc;

 rc = get_phys_clock(&data->ep_sys_time);




 if ((rc && !private->rdc_data.facilities.XRC_supported) ||
     rc == -EOPNOTSUPP || rc == -EACCES)
  return 0;


 data->ga_extended |= 0x08;
 data->ga_extended |= 0x02;

 if (ccw) {
  ccw->count = sizeof(struct DE_eckd_data);
  ccw->flags |= CCW_FLAG_SLI;
 }

 return rc;
}
