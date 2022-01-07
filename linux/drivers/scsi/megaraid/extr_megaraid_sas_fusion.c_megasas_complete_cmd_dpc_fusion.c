
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct megasas_instance {scalar_t__ msix_vectors; int adprecovery; } ;


 scalar_t__ MEGASAS_HW_CRITICAL_ERROR ;
 scalar_t__ atomic_read (int *) ;
 int complete_cmd_fusion (struct megasas_instance*,int,int *) ;

__attribute__((used)) static void
megasas_complete_cmd_dpc_fusion(unsigned long instance_addr)
{
 struct megasas_instance *instance =
  (struct megasas_instance *)instance_addr;
 u32 count, MSIxIndex;

 count = instance->msix_vectors > 0 ? instance->msix_vectors : 1;


 if (atomic_read(&instance->adprecovery) == MEGASAS_HW_CRITICAL_ERROR)
  return;

 for (MSIxIndex = 0 ; MSIxIndex < count; MSIxIndex++)
  complete_cmd_fusion(instance, MSIxIndex, ((void*)0));
}
