
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct intel_scu_ipc_dev {scalar_t__ ipc_base; } ;


 scalar_t__ IPC_READ_BUFFER ;
 int readb (scalar_t__) ;

__attribute__((used)) static inline u8 ipc_data_readb(struct intel_scu_ipc_dev *scu, u32 offset)
{
 return readb(scu->ipc_base + IPC_READ_BUFFER + offset);
}
