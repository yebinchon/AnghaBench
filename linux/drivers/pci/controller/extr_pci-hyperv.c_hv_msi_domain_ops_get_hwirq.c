
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msi_domain_info {int dummy; } ;
struct TYPE_3__ {int msi_hwirq; } ;
typedef TYPE_1__ msi_alloc_info_t ;
typedef int irq_hw_number_t ;



__attribute__((used)) static irq_hw_number_t hv_msi_domain_ops_get_hwirq(struct msi_domain_info *info,
         msi_alloc_info_t *arg)
{
 return arg->msi_hwirq;
}
