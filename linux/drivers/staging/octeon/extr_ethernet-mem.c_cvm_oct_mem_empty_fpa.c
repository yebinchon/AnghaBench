
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_FPA_PACKET_POOL ;
 int cvm_oct_free_hw_memory (int,int,int) ;
 int cvm_oct_free_hw_skbuff (int,int,int) ;

void cvm_oct_mem_empty_fpa(int pool, int size, int elements)
{
 if (pool == CVMX_FPA_PACKET_POOL)
  cvm_oct_free_hw_skbuff(pool, size, elements);
 else
  cvm_oct_free_hw_memory(pool, size, elements);
}
