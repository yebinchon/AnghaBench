
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;


 unsigned long long lock_secret ;

__attribute__((used)) static inline u64 secure_addr(void *addr)
{
 u64 v = lock_secret ^ (u64)(unsigned long)addr;





 v |= (1ULL << 63);
 return v;
}
