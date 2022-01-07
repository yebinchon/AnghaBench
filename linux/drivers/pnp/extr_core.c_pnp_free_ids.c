
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_id {struct pnp_id* next; } ;
struct pnp_dev {struct pnp_id* id; } ;


 int kfree (struct pnp_id*) ;

__attribute__((used)) static void pnp_free_ids(struct pnp_dev *dev)
{
 struct pnp_id *id;
 struct pnp_id *next;

 id = dev->id;
 while (id) {
  next = id->next;
  kfree(id);
  id = next;
 }
}
