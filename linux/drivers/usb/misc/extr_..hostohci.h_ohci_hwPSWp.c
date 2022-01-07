
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td {int * hwPSW; } ;
struct ohci_hcd {int dummy; } ;
typedef int __hc16 ;


 scalar_t__ big_endian_desc (struct ohci_hcd const*) ;

__attribute__((used)) static inline __hc16 *ohci_hwPSWp(const struct ohci_hcd *ohci,
                                 const struct td *td, int index)
{
 return (__hc16 *)(big_endian_desc(ohci) ?
   &td->hwPSW[index ^ 1] : &td->hwPSW[index]);
}
