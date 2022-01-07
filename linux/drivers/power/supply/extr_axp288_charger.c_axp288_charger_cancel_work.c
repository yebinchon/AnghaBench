
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int work; } ;
struct TYPE_3__ {int work; } ;
struct axp288_chrg_info {TYPE_2__ cable; TYPE_1__ otg; } ;


 int cancel_work_sync (int *) ;

__attribute__((used)) static void axp288_charger_cancel_work(void *data)
{
 struct axp288_chrg_info *info = data;

 cancel_work_sync(&info->otg.work);
 cancel_work_sync(&info->cable.work);
}
