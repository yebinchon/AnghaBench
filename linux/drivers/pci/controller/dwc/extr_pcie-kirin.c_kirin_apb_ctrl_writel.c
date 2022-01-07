
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct kirin_pcie {scalar_t__ apb_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void kirin_apb_ctrl_writel(struct kirin_pcie *kirin_pcie,
      u32 val, u32 reg)
{
 writel(val, kirin_pcie->apb_base + reg);
}
