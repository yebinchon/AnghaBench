
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARCH_KMALLOC_MINALIGN ;

__attribute__((used)) static inline unsigned long buffer_offset(void *buf)
{
 return (unsigned long)buf & (ARCH_KMALLOC_MINALIGN - 1);
}
