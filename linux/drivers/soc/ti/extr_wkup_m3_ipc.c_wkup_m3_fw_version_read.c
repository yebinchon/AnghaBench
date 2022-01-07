
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wkup_m3_ipc {int dummy; } ;


 int M3_FW_VERSION_MASK ;
 int wkup_m3_ctrl_ipc_read (struct wkup_m3_ipc*,int) ;

__attribute__((used)) static int wkup_m3_fw_version_read(struct wkup_m3_ipc *m3_ipc)
{
 int val;

 val = wkup_m3_ctrl_ipc_read(m3_ipc, 2);

 return val & M3_FW_VERSION_MASK;
}
