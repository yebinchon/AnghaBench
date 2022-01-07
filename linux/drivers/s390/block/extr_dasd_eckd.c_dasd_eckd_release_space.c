
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_data_t {int intensity; int stop_unit; int start_unit; } ;
struct dasd_device {int dummy; } ;


 int DASD_FMT_INT_ESE_FULL ;
 int EINVAL ;
 int dasd_eckd_release_space_full (struct dasd_device*) ;
 int dasd_eckd_release_space_trks (struct dasd_device*,int ,int ) ;

__attribute__((used)) static int dasd_eckd_release_space(struct dasd_device *device,
       struct format_data_t *rdata)
{
 if (rdata->intensity & DASD_FMT_INT_ESE_FULL)
  return dasd_eckd_release_space_full(device);
 else if (rdata->intensity == 0)
  return dasd_eckd_release_space_trks(device, rdata->start_unit,
          rdata->stop_unit);
 else
  return -EINVAL;
}
