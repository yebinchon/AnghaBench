
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int EBUSY ;
 scalar_t__ pte_none (int ) ;

__attribute__((used)) static int is_mapped_fn(pte_t *pte, unsigned long addr, void *data)
{
 return pte_none(*pte) ? 0 : -EBUSY;
}
