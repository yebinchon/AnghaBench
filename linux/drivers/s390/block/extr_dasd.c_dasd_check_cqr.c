
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* discipline; } ;
struct dasd_ccw_req {int magic; struct dasd_device* startdev; } ;
struct TYPE_2__ {scalar_t__ name; int ebcname; } ;


 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,int ,unsigned int) ;
 int DBF_WARNING ;
 int EINVAL ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static inline int dasd_check_cqr(struct dasd_ccw_req *cqr)
{
 struct dasd_device *device;

 if (cqr == ((void*)0))
  return -EINVAL;
 device = cqr->startdev;
 if (strncmp((char *) &cqr->magic, device->discipline->ebcname, 4)) {
  DBF_DEV_EVENT(DBF_WARNING, device,
       " dasd_ccw_req 0x%08x magic doesn't match"
       " discipline 0x%08x",
       cqr->magic,
       *(unsigned int *) device->discipline->name);
  return -EINVAL;
 }
 return 0;
}
