
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int do_siga_sync(unsigned long schid,
          unsigned int out_mask, unsigned int in_mask,
          unsigned int fc)
{
 register unsigned long __fc asm ("0") = fc;
 register unsigned long __schid asm ("1") = schid;
 register unsigned long out asm ("2") = out_mask;
 register unsigned long in asm ("3") = in_mask;
 int cc;

 asm volatile(
  "	siga	0\n"
  "	ipm	%0\n"
  "	srl	%0,28\n"
  : "=d" (cc)
  : "d" (__fc), "d" (__schid), "d" (out), "d" (in) : "cc");
 return cc;
}
