
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sys_ck; TYPE_2__* int_ctrl; TYPE_1__* extif; } ;
struct TYPE_5__ {int (* cleanup ) () ;} ;
struct TYPE_4__ {int (* cleanup ) () ;} ;


 int OMAPFB_UPDATE_DISABLED ;
 int clk_disable (int ) ;
 TYPE_3__ hwa742 ;
 int hwa742_set_update_mode (int ) ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static void hwa742_cleanup(void)
{
 hwa742_set_update_mode(OMAPFB_UPDATE_DISABLED);
 hwa742.extif->cleanup();
 hwa742.int_ctrl->cleanup();
 clk_disable(hwa742.sys_ck);
}
