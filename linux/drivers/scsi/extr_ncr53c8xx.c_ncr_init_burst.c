
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ncb {int rv_ctest0; int rv_dmode; int rv_ctest5; } ;



__attribute__((used)) static inline void ncr_init_burst(struct ncb *np, u_char bc)
{
 u_char *be = &np->rv_ctest0;
 *be &= ~0x80;
 np->rv_dmode &= ~(0x3 << 6);
 np->rv_ctest5 &= ~0x4;

 if (!bc) {
  *be |= 0x80;
 } else {
  --bc;
  np->rv_dmode |= ((bc & 0x3) << 6);
  np->rv_ctest5 |= (bc & 0x4);
 }
}
