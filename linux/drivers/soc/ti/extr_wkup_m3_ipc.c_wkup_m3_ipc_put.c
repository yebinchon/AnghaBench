
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wkup_m3_ipc {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 TYPE_1__* m3_ipc_state ;
 int put_device (int ) ;

void wkup_m3_ipc_put(struct wkup_m3_ipc *m3_ipc)
{
 if (m3_ipc_state)
  put_device(m3_ipc_state->dev);
}
