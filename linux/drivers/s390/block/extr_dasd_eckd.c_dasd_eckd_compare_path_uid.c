
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_uid {int dummy; } ;
struct dasd_eckd_private {int uid; } ;
struct dasd_device {int dummy; } ;


 int create_uid (struct dasd_eckd_private*) ;
 int dasd_eckd_get_uid (struct dasd_device*,struct dasd_uid*) ;
 int memcmp (struct dasd_uid*,int *,int) ;

__attribute__((used)) static int dasd_eckd_compare_path_uid(struct dasd_device *device,
          struct dasd_eckd_private *private)
{
 struct dasd_uid device_uid;

 create_uid(private);
 dasd_eckd_get_uid(device, &device_uid);

 return memcmp(&device_uid, &private->uid, sizeof(struct dasd_uid));
}
