
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wkup_m3_ipc {int dummy; } ;


 int M3_STATUS_RESP_MASK ;
 unsigned int __ffs (int) ;
 int wkup_m3_ctrl_ipc_read (struct wkup_m3_ipc*,int) ;

__attribute__((used)) static int wkup_m3_request_pm_status(struct wkup_m3_ipc *m3_ipc)
{
 unsigned int i;
 int val;

 val = wkup_m3_ctrl_ipc_read(m3_ipc, 1);

 i = M3_STATUS_RESP_MASK & val;
 i >>= __ffs(M3_STATUS_RESP_MASK);

 return i;
}
