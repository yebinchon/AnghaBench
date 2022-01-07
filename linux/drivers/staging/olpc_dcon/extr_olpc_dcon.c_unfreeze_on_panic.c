
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {int (* set_dconload ) (int) ;} ;


 int NOTIFY_DONE ;
 TYPE_1__* pdata ;
 int stub1 (int) ;

__attribute__((used)) static int unfreeze_on_panic(struct notifier_block *nb,
        unsigned long e, void *p)
{
 pdata->set_dconload(1);
 return NOTIFY_DONE;
}
