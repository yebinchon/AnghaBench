
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wkup_m3_ipc {int dummy; } ;
struct TYPE_3__ {unsigned int irq_nr; char const* src; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int M3_WAKE_SRC_MASK ;
 TYPE_1__* wakeups ;
 int wkup_m3_ctrl_ipc_read (struct wkup_m3_ipc*,int) ;

__attribute__((used)) static const char *wkup_m3_request_wake_src(struct wkup_m3_ipc *m3_ipc)
{
 unsigned int wakeup_src_idx;
 int j, val;

 val = wkup_m3_ctrl_ipc_read(m3_ipc, 6);

 wakeup_src_idx = val & M3_WAKE_SRC_MASK;

 for (j = 0; j < ARRAY_SIZE(wakeups) - 1; j++) {
  if (wakeups[j].irq_nr == wakeup_src_idx)
   return wakeups[j].src;
 }
 return wakeups[j].src;
}
