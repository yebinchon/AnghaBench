
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long num_cpus; } ;


 TYPE_1__ xgene_msi_ctrl ;

__attribute__((used)) static int hwirq_to_cpu(unsigned long hwirq)
{
 return (hwirq % xgene_msi_ctrl.num_cpus);
}
