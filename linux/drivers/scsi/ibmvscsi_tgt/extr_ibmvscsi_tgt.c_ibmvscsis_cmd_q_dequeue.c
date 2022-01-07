
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct viosrp_crq {scalar_t__ valid; } ;


 int dma_rmb () ;

__attribute__((used)) static struct viosrp_crq *ibmvscsis_cmd_q_dequeue(uint mask,
        uint *current_index,
        struct viosrp_crq *base_addr)
{
 struct viosrp_crq *ptr;

 ptr = base_addr + *current_index;

 if (ptr->valid) {
  *current_index = (*current_index + 1) & mask;
  dma_rmb();
 } else {
  ptr = ((void*)0);
 }

 return ptr;
}
