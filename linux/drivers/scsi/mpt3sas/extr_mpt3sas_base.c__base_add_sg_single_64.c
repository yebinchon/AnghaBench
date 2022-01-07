
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int dma_addr_t ;
struct TYPE_2__ {int Address; int FlagsLength; } ;
typedef TYPE_1__ Mpi2SGESimple64_t ;


 int MPI2_SGE_FLAGS_64_BIT_ADDRESSING ;
 int MPI2_SGE_FLAGS_SHIFT ;
 int MPI2_SGE_FLAGS_SYSTEM_ADDRESS ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static void
_base_add_sg_single_64(void *paddr, u32 flags_length, dma_addr_t dma_addr)
{
 Mpi2SGESimple64_t *sgel = paddr;

 flags_length |= (MPI2_SGE_FLAGS_64_BIT_ADDRESSING |
     MPI2_SGE_FLAGS_SYSTEM_ADDRESS) << MPI2_SGE_FLAGS_SHIFT;
 sgel->FlagsLength = cpu_to_le32(flags_length);
 sgel->Address = cpu_to_le64(dma_addr);
}
