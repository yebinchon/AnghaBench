
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
typedef int efi_time_t ;
typedef int efi_time_cap_t ;
typedef scalar_t__ efi_status_t ;
struct TYPE_2__ {scalar_t__ (* get_time ) (int *,int *) ;} ;


 scalar_t__ EFI_SUCCESS ;
 int EINVAL ;
 int EIO ;
 int convert_from_efi_time (int *,struct rtc_time*) ;
 int dev_err (struct device*,char*) ;
 TYPE_1__ efi ;
 scalar_t__ stub1 (int *,int *) ;

__attribute__((used)) static int efi_read_time(struct device *dev, struct rtc_time *tm)
{
 efi_status_t status;
 efi_time_t eft;
 efi_time_cap_t cap;

 status = efi.get_time(&eft, &cap);

 if (status != EFI_SUCCESS) {

  dev_err(dev, "can't read time\n");
  return -EINVAL;
 }

 if (!convert_from_efi_time(&eft, tm))
  return -EIO;

 return 0;
}
