
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__** base; } ;
typedef size_t IPC_TYPE ;
typedef TYPE_1__ IPC_DEV ;


 size_t BASE_DATA ;
 scalar_t__ OFFSET_DATA_LOW ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void ipc_write_data_low(IPC_DEV *ipcdev, IPC_TYPE type, u32 data)
{
 writel(data, ipcdev->base[type][BASE_DATA] + OFFSET_DATA_LOW);
}
