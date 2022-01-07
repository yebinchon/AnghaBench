
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpacpi_rfk {int rfkill; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_status ) () ;} ;


 int ENODEV ;
 int TPACPI_RFK_RADIO_OFF ;
 int rfkill_set_sw_state (int ,int) ;
 int stub1 () ;

__attribute__((used)) static int tpacpi_rfk_update_swstate(const struct tpacpi_rfk *tp_rfk)
{
 int status;

 if (!tp_rfk)
  return -ENODEV;

 status = (tp_rfk->ops->get_status)();
 if (status < 0)
  return status;

 rfkill_set_sw_state(tp_rfk->rfkill,
       (status == TPACPI_RFK_RADIO_OFF));

 return status;
}
