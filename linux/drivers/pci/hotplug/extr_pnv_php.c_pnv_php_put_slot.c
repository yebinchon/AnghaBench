
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_php_slot {int kref; } ;


 int kref_put (int *,int ) ;
 int pnv_php_free_slot ;

__attribute__((used)) static inline void pnv_php_put_slot(struct pnv_php_slot *php_slot)
{

 if (!php_slot)
  return;

 kref_put(&php_slot->kref, pnv_php_free_slot);
}
