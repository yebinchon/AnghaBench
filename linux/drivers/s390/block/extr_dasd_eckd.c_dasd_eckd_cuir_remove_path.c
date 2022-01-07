
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct dasd_cuir_message {int dummy; } ;
typedef int __u8 ;


 int EINVAL ;
 unsigned long dasd_eckd_cuir_scope (struct dasd_device*,int ,struct dasd_cuir_message*) ;
 int dasd_path_add_cuirpm (struct dasd_device*,unsigned long) ;
 unsigned long dasd_path_get_opm (struct dasd_device*) ;
 int dasd_path_remove_opm (struct dasd_device*,unsigned long) ;

__attribute__((used)) static int dasd_eckd_cuir_remove_path(struct dasd_device *device, __u8 lpum,
          struct dasd_cuir_message *cuir)
{
 unsigned long tbcpm;

 tbcpm = dasd_eckd_cuir_scope(device, lpum, cuir);

 if (!(dasd_path_get_opm(device) & tbcpm))
  return 0;
 if (!(dasd_path_get_opm(device) & ~tbcpm)) {


  return -EINVAL;
 }

 dasd_path_remove_opm(device, tbcpm);
 dasd_path_add_cuirpm(device, tbcpm);
 return tbcpm;
}
