
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_to_be32_array (void*,void const*,size_t) ;

__attribute__((used)) static inline void format_dwdata(void *dst, const void *src, size_t dwords)
{
 cpu_to_be32_array(dst, src, dwords);
}
