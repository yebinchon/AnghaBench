
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int be32_add_cpu (int *,int) ;

__attribute__((used)) static inline void
inc_rfc1001_len(void *buf, int count)
{
 be32_add_cpu((__be32 *)buf, count);
}
