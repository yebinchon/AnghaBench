
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



 unsigned int CMDF_ROUND_MASK ;


 int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 int DIV_ROUND_UP (unsigned int,unsigned int) ;
 scalar_t__ UINT_MAX ;
 unsigned int do_div (scalar_t__,unsigned int) ;

__attribute__((used)) static unsigned int pci230_divide_ns(u64 ns, unsigned int timebase,
         unsigned int flags)
{
 u64 div;
 unsigned int rem;

 div = ns;
 rem = do_div(div, timebase);
 switch (flags & CMDF_ROUND_MASK) {
 default:
 case 129:
  div += DIV_ROUND_CLOSEST(rem, timebase);
  break;
 case 130:
  break;
 case 128:
  div += DIV_ROUND_UP(rem, timebase);
  break;
 }
 return div > UINT_MAX ? UINT_MAX : (unsigned int)div;
}
