
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wkup_m3_ipc {scalar_t__ ipc_mem_base; } ;


 int AM33XX_CTRL_IPC_REG_COUNT ;
 scalar_t__ AM33XX_CTRL_IPC_REG_OFFSET (int) ;
 scalar_t__ WARN (int,char*) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static unsigned int wkup_m3_ctrl_ipc_read(struct wkup_m3_ipc *m3_ipc,
       int ipc_reg_num)
{
 if (WARN(ipc_reg_num < 0 || ipc_reg_num > AM33XX_CTRL_IPC_REG_COUNT,
   "ipc register operation out of range"))
  return 0;

 return readl(m3_ipc->ipc_mem_base +
       AM33XX_CTRL_IPC_REG_OFFSET(ipc_reg_num));
}
