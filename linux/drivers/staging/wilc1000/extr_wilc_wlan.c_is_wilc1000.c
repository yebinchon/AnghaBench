
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline bool is_wilc1000(u32 id)
{
 return (id & 0xfffff000) == 0x100000;
}
