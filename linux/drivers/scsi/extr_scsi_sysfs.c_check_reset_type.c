
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCSI_ADAPTER_RESET ;
 int SCSI_FIRMWARE_RESET ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static int check_reset_type(const char *str)
{
 if (sysfs_streq(str, "adapter"))
  return SCSI_ADAPTER_RESET;
 else if (sysfs_streq(str, "firmware"))
  return SCSI_FIRMWARE_RESET;
 else
  return 0;
}
