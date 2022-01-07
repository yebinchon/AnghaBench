
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fotg210_hcd {int dummy; } ;
typedef int __hc32 ;


 int le32_to_cpup (int const*) ;

__attribute__((used)) static inline u32 hc32_to_cpup(const struct fotg210_hcd *fotg210,
          const __hc32 *x)
{
 return le32_to_cpup(x);
}
