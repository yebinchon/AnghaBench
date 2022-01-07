
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int be32_to_cpu_array (void*,void const*,size_t) ;

__attribute__((used)) static inline void parse_dwdata(void *dst, const void *src, size_t dwords)
{
 be32_to_cpu_array(dst, src, dwords);
}
