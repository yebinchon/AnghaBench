
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtc_wkalrm {int time; int pending; int enabled; } ;
struct device {int dummy; } ;
typedef int efi_time_t ;
typedef scalar_t__ efi_status_t ;
typedef int efi_bool_t ;
struct TYPE_2__ {scalar_t__ (* get_wakeup_time ) (int *,int *,int *) ;} ;


 scalar_t__ EFI_SUCCESS ;
 int EINVAL ;
 int EIO ;
 int convert_from_efi_time (int *,int *) ;
 TYPE_1__ efi ;
 int rtc_valid_tm (int *) ;
 scalar_t__ stub1 (int *,int *,int *) ;

__attribute__((used)) static int efi_read_alarm(struct device *dev, struct rtc_wkalrm *wkalrm)
{
 efi_time_t eft;
 efi_status_t status;




 status = efi.get_wakeup_time((efi_bool_t *)&wkalrm->enabled,
         (efi_bool_t *)&wkalrm->pending, &eft);

 if (status != EFI_SUCCESS)
  return -EINVAL;

 if (!convert_from_efi_time(&eft, &wkalrm->time))
  return -EIO;

 return rtc_valid_tm(&wkalrm->time);
}
