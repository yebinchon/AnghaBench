
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct iproc_msi {int nr_eq_region; } ;


 unsigned int EQ_LEN ;
 unsigned int EQ_MEM_REGION_SIZE ;

__attribute__((used)) static inline unsigned int iproc_msi_eq_offset(struct iproc_msi *msi, u32 eq)
{
 if (msi->nr_eq_region > 1)
  return eq * EQ_MEM_REGION_SIZE;
 else
  return eq * EQ_LEN * sizeof(u32);
}
