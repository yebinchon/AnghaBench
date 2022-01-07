
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wkup_m3_ipc {scalar_t__ state; } ;


 scalar_t__ M3_STATE_RESET ;
 scalar_t__ M3_STATE_UNKNOWN ;

__attribute__((used)) static int wkup_m3_is_available(struct wkup_m3_ipc *m3_ipc)
{
 return ((m3_ipc->state != M3_STATE_RESET) &&
  (m3_ipc->state != M3_STATE_UNKNOWN));
}
