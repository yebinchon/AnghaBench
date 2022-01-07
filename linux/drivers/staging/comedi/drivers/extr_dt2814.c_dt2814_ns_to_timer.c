
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int dt2814_ns_to_timer(unsigned int *ns, unsigned int flags)
{
 int i;
 unsigned int f;



 f = 10000;
 for (i = 0; i < 8; i++) {
  if ((2 * (*ns)) < (f * 11))
   break;
  f *= 10;
 }

 *ns = f;

 return i;
}
