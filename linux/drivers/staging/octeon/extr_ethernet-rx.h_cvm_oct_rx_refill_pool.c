
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_FPA_PACKET_POOL ;
 int CVMX_FPA_PACKET_POOL_SIZE ;
 int FAU_NUM_PACKET_BUFFERS_TO_FREE ;
 int cvm_oct_mem_fill_fpa (int ,int ,int) ;
 int cvmx_fau_atomic_add32 (int ,int) ;
 int cvmx_fau_fetch_and_add32 (int ,int ) ;

__attribute__((used)) static inline void cvm_oct_rx_refill_pool(int fill_threshold)
{
 int number_to_free;
 int num_freed;

 number_to_free =
  cvmx_fau_fetch_and_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE, 0);

 if (number_to_free > fill_threshold) {
  cvmx_fau_atomic_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE,
          -number_to_free);
  num_freed = cvm_oct_mem_fill_fpa(CVMX_FPA_PACKET_POOL,
       CVMX_FPA_PACKET_POOL_SIZE,
       number_to_free);
  if (num_freed != number_to_free) {
   cvmx_fau_atomic_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE,
           number_to_free - num_freed);
  }
 }
}
