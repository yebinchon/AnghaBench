
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* parent; } ;
struct rtc_device {int * nvram; TYPE_2__ dev; } ;
struct TYPE_3__ {int kobj; } ;


 int kfree (int *) ;
 int sysfs_remove_bin_file (int *,int *) ;

__attribute__((used)) static void rtc_nvram_unregister(struct rtc_device *rtc)
{
 sysfs_remove_bin_file(&rtc->dev.parent->kobj, rtc->nvram);
 kfree(rtc->nvram);
 rtc->nvram = ((void*)0);
}
