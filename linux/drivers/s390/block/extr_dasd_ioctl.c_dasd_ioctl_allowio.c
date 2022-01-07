
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int flags; } ;
struct dasd_block {struct dasd_device* base; } ;


 int CAP_SYS_ADMIN ;
 int DASD_FLAG_ABORTALL ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_NOTICE ;
 int EACCES ;
 int capable (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int dasd_ioctl_allowio(struct dasd_block *block)
{
 struct dasd_device *base;

 base = block->base;
 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (test_and_clear_bit(DASD_FLAG_ABORTALL, &base->flags))
  DBF_DEV_EVENT(DBF_NOTICE, base, "%s", "abortall flag unset");

 return 0;
}
