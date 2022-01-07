
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_msi {int dummy; } ;


 unsigned long hwirq_to_cpu (struct iproc_msi*,unsigned long) ;

__attribute__((used)) static inline unsigned long hwirq_to_canonical_hwirq(struct iproc_msi *msi,
           unsigned long hwirq)
{
 return (hwirq - hwirq_to_cpu(msi, hwirq));
}
