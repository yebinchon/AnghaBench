
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crw {int dummy; } ;


 int trace_s390_cio_stcrw (struct crw*,int) ;

int stcrw(struct crw *crw)
{
 int ccode;

 asm volatile(
  "	stcrw	0(%2)\n"
  "	ipm	%0\n"
  "	srl	%0,28\n"
  : "=d" (ccode), "=m" (*crw)
  : "a" (crw)
  : "cc");
 trace_s390_cio_stcrw(crw, ccode);

 return ccode;
}
