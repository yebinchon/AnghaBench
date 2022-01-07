
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_scu_ipc_dev {scalar_t__ ipc_base; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u8 ipc_read_status(struct intel_scu_ipc_dev *scu)
{
 return __raw_readl(scu->ipc_base + 0x04);
}
