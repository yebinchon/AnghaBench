
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sbp2_pointer {int low; int high; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u64 sbp2_pointer_to_addr(const struct sbp2_pointer *ptr)
{
 return (u64)(be32_to_cpu(ptr->high) & 0x0000ffff) << 32 |
  (be32_to_cpu(ptr->low) & 0xfffffffc);
}
