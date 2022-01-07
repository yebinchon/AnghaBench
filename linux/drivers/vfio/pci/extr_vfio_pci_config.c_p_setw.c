
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct perm_bits {int * write; int * virt; } ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;

__attribute__((used)) static inline void p_setw(struct perm_bits *p, int off, u16 virt, u16 write)
{
 *(__le16 *)(&p->virt[off]) = cpu_to_le16(virt);
 *(__le16 *)(&p->write[off]) = cpu_to_le16(write);
}
