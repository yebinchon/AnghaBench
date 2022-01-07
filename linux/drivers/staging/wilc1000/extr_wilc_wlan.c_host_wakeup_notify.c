
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilc {TYPE_1__* hif_func; } ;
struct TYPE_2__ {int (* hif_write_reg ) (struct wilc*,int,int) ;} ;


 int WILC_BUS_ACQUIRE_ONLY ;
 int WILC_BUS_RELEASE_ONLY ;
 int acquire_bus (struct wilc*,int ) ;
 int release_bus (struct wilc*,int ) ;
 int stub1 (struct wilc*,int,int) ;

void host_wakeup_notify(struct wilc *wilc)
{
 acquire_bus(wilc, WILC_BUS_ACQUIRE_ONLY);
 wilc->hif_func->hif_write_reg(wilc, 0x10b0, 1);
 release_bus(wilc, WILC_BUS_RELEASE_ONLY);
}
