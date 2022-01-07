
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_scu_ipc_dev {scalar_t__ ipc_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void ipc_data_writel(struct intel_scu_ipc_dev *scu, u32 data, u32 offset)
{
 writel(data, scu->ipc_base + 0x80 + offset);
}
