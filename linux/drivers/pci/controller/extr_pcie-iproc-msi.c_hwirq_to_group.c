
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct iproc_msi {unsigned long nr_irqs; } ;



__attribute__((used)) static inline u32 hwirq_to_group(struct iproc_msi *msi, unsigned long hwirq)
{
 return (hwirq % msi->nr_irqs);
}
