
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MPIDR_AFFINITY_LEVEL (int,int) ;
 int MPIDR_MT_BITMASK ;
 int read_cpuid_mpidr () ;

__attribute__((used)) static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
{
 u64 mpidr = read_cpuid_mpidr();

 if (mpidr & MPIDR_MT_BITMASK) {
  int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);

  if (sccl_id)
   *sccl_id = aff2 >> 3;
  if (ccl_id)
   *ccl_id = aff2 & 0x7;
 } else {
  if (sccl_id)
   *sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
  if (ccl_id)
   *ccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 1);
 }
}
