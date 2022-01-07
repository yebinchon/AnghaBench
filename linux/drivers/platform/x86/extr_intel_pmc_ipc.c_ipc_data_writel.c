
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ ipc_base; } ;


 scalar_t__ IPC_WRITE_BUFFER ;
 TYPE_1__ ipcdev ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void ipc_data_writel(u32 data, u32 offset)
{
 writel(data, ipcdev.ipc_base + IPC_WRITE_BUFFER + offset);
}
