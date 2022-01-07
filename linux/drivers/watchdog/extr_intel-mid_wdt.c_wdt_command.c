
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IPC_WATCHDOG ;
 int intel_scu_ipc_command (int ,int,int *,int,int *,int ) ;

__attribute__((used)) static inline int wdt_command(int sub, u32 *in, int inlen)
{
 return intel_scu_ipc_command(IPC_WATCHDOG, sub, in, inlen, ((void*)0), 0);
}
