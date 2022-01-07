
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct perm_bits {void** write; void** virt; } ;



__attribute__((used)) static inline void p_setb(struct perm_bits *p, int off, u8 virt, u8 write)
{
 p->virt[off] = virt;
 p->write[off] = write;
}
