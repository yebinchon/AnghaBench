
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;



__attribute__((used)) static inline void pm8001_write_32(void *addr, u32 offset, __le32 val)
{
 *((__le32 *)(addr + offset)) = val;
}
