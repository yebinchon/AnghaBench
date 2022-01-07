
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_inode_elem {struct extent_inode_elem* next; } ;


 int kfree (struct extent_inode_elem*) ;

__attribute__((used)) static void free_inode_elem_list(struct extent_inode_elem *eie)
{
 struct extent_inode_elem *eie_next;

 for (; eie; eie = eie_next) {
  eie_next = eie->next;
  kfree(eie);
 }
}
