
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sbp2_pointer {void* low; void* high; } ;


 void* cpu_to_be32 (int) ;

__attribute__((used)) static inline void addr_to_sbp2_pointer(u64 addr, struct sbp2_pointer *ptr)
{
 ptr->high = cpu_to_be32(addr >> 32);
 ptr->low = cpu_to_be32(addr);
}
