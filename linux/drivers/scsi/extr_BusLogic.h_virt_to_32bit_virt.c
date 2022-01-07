
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 virt_to_32bit_virt(void *virt_addr)
{
 return (u32) (unsigned long) virt_addr;
}
