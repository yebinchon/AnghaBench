
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int do_siga_output(unsigned long schid, unsigned long mask,
     unsigned int *bb, unsigned int fc,
     unsigned long aob)
{
 register unsigned long __fc asm("0") = fc;
 register unsigned long __schid asm("1") = schid;
 register unsigned long __mask asm("2") = mask;
 register unsigned long __aob asm("3") = aob;
 int cc;

 asm volatile(
  "	siga	0\n"
  "	ipm	%0\n"
  "	srl	%0,28\n"
  : "=d" (cc), "+d" (__fc), "+d" (__aob)
  : "d" (__schid), "d" (__mask)
  : "cc");
 *bb = __fc >> 31;
 return cc;
}
