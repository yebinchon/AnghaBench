
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_bootrom {int dwork; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void gb_bootrom_cancel_timeout(struct gb_bootrom *bootrom)
{
 cancel_delayed_work_sync(&bootrom->dwork);
}
