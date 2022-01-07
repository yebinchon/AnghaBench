
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ehci_hcd {int dummy; } ;
typedef int __hc32 ;


 int cpu_to_le32 (int const) ;

__attribute__((used)) static inline __hc32 cpu_to_hc32(const struct ehci_hcd *ehci, const u32 x)
{
 return cpu_to_le32(x);
}
