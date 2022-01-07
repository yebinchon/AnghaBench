
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ ipc_base; } ;


 scalar_t__ IPC_STATUS ;
 TYPE_1__ ipcdev ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 ipc_read_status(void)
{
 return readl(ipcdev.ipc_base + IPC_STATUS);
}
