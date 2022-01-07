
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int get_divisor (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int get_ao_divisor(unsigned int ns, unsigned int flags)
{
 return get_divisor(ns, flags) - 2;
}
