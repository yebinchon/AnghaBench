
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wilc {TYPE_1__* hif_func; } ;
struct TYPE_2__ {int (* hif_read_int ) (struct wilc*,int*) ;} ;


 int ALL_INT_EXT ;
 int DATA_INT_EXT ;
 int WILC_BUS_ACQUIRE_AND_WAKEUP ;
 int WILC_BUS_RELEASE_ALLOW_SLEEP ;
 int acquire_bus (struct wilc*,int ) ;
 int release_bus (struct wilc*,int ) ;
 int stub1 (struct wilc*,int*) ;
 int wilc_unknown_isr_ext (struct wilc*) ;
 int wilc_wlan_handle_isr_ext (struct wilc*,int) ;

void wilc_handle_isr(struct wilc *wilc)
{
 u32 int_status;

 acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
 wilc->hif_func->hif_read_int(wilc, &int_status);

 if (int_status & DATA_INT_EXT)
  wilc_wlan_handle_isr_ext(wilc, int_status);

 if (!(int_status & (ALL_INT_EXT)))
  wilc_unknown_isr_ext(wilc);

 release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
}
