
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_msi {unsigned long nr_cpus; } ;



__attribute__((used)) static inline int hwirq_to_cpu(struct iproc_msi *msi, unsigned long hwirq)
{
 return (hwirq % msi->nr_cpus);
}
