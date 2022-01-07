
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wkup_m3_ipc {int dev; } ;


 int get_device (int ) ;
 struct wkup_m3_ipc* m3_ipc_state ;

struct wkup_m3_ipc *wkup_m3_ipc_get(void)
{
 if (m3_ipc_state)
  get_device(m3_ipc_state->dev);
 else
  return ((void*)0);

 return m3_ipc_state;
}
