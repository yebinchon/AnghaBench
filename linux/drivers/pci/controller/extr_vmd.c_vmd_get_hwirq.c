
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_domain_info {int dummy; } ;
typedef int msi_alloc_info_t ;
typedef int irq_hw_number_t ;



__attribute__((used)) static irq_hw_number_t vmd_get_hwirq(struct msi_domain_info *info,
         msi_alloc_info_t *arg)
{
 return 0;
}
