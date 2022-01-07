
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symlist_t ;
typedef int symbol_node_t ;


 int * SLIST_FIRST (int *) ;
 int SLIST_INIT (int *) ;
 int * SLIST_NEXT (int *,int ) ;
 int free (int *) ;
 int links ;

void
symlist_free(symlist_t *symlist)
{
 symbol_node_t *node1, *node2;

 node1 = SLIST_FIRST(symlist);
 while (node1 != ((void*)0)) {
  node2 = SLIST_NEXT(node1, links);
  free(node1);
  node1 = node2;
 }
 SLIST_INIT(symlist);
}
