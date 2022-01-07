
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perm_bits {int * write; int * virt; } ;


 int kfree (int *) ;

__attribute__((used)) static void free_perm_bits(struct perm_bits *perm)
{
 kfree(perm->virt);
 kfree(perm->write);
 perm->virt = ((void*)0);
 perm->write = ((void*)0);
}
