
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int _INTC_SHIFT (unsigned int) ;
 unsigned int _INTC_WIDTH (unsigned int) ;

unsigned long intc_get_field_from_handle(unsigned int value, unsigned int handle)
{
 unsigned int width = _INTC_WIDTH(handle);
 unsigned int shift = _INTC_SHIFT(handle);
 unsigned int mask = ((1 << width) - 1) << shift;

 return (value & mask) >> shift;
}
