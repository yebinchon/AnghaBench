
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_scu_ipc_dev {scalar_t__ ipc_base; } ;


 scalar_t__ IPC_READ_BUFFER ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 ipc_data_readl(struct intel_scu_ipc_dev *scu, u32 offset)
{
 return readl(scu->ipc_base + IPC_READ_BUFFER + offset);
}
