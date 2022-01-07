
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int ** base; } ;
typedef size_t IPC_TYPE ;
typedef TYPE_1__ IPC_DEV ;


 size_t BASE_IFACE ;
 int readl (int ) ;

__attribute__((used)) static inline u32 ipc_read_status(IPC_DEV *ipcdev, IPC_TYPE type)
{
 return readl(ipcdev->base[type][BASE_IFACE]);
}
