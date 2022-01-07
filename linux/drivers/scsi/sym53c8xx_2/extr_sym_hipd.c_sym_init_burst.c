
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_hcb {int rv_ctest4; int rv_dmode; int rv_ctest5; } ;



__attribute__((used)) static inline void sym_init_burst(struct sym_hcb *np, u_char bc)
{
 np->rv_ctest4 &= ~0x80;
 np->rv_dmode &= ~(0x3 << 6);
 np->rv_ctest5 &= ~0x4;

 if (!bc) {
  np->rv_ctest4 |= 0x80;
 }
 else {
  --bc;
  np->rv_dmode |= ((bc & 0x3) << 6);
  np->rv_ctest5 |= (bc & 0x4);
 }
}
