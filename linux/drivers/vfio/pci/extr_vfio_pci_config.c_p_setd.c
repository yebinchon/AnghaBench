
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct perm_bits {int * write; int * virt; } ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void p_setd(struct perm_bits *p, int off, u32 virt, u32 write)
{
 *(__le32 *)(&p->virt[off]) = cpu_to_le32(virt);
 *(__le32 *)(&p->write[off]) = cpu_to_le32(write);
}
