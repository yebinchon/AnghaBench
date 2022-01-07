
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long inl (unsigned int) ;

__attribute__((used)) static inline unsigned long nsp32_read4(unsigned int base,
     unsigned int index)
{
 return inl(base + index);
}
