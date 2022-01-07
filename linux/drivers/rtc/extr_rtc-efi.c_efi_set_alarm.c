
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct device {int dummy; } ;
typedef int efi_time_t ;
typedef scalar_t__ efi_status_t ;
typedef int efi_bool_t ;
struct TYPE_2__ {scalar_t__ (* set_wakeup_time ) (int ,int *) ;} ;


 scalar_t__ EFI_SUCCESS ;
 int EINVAL ;
 int convert_to_efi_time (int *,int *) ;
 int dev_warn (struct device*,char*,int) ;
 TYPE_1__ efi ;
 scalar_t__ stub1 (int ,int *) ;

__attribute__((used)) static int efi_set_alarm(struct device *dev, struct rtc_wkalrm *wkalrm)
{
 efi_time_t eft;
 efi_status_t status;

 convert_to_efi_time(&wkalrm->time, &eft);
 status = efi.set_wakeup_time((efi_bool_t)wkalrm->enabled, &eft);

 dev_warn(dev, "write status is %d\n", (int)status);

 return status == EFI_SUCCESS ? 0 : -EINVAL;
}
