
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_div (unsigned long long,unsigned int) ;

__attribute__((used)) static inline unsigned long ps_to_hz(unsigned int psvalue)
{
 unsigned long long numerator = 1000 * 1000 * 1000 * 1000ULL;

 do_div(numerator, psvalue);
 return (unsigned long)numerator;
}
