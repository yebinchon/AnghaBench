
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symlist_t ;
typedef int symbol_node_t ;


 int * SLIST_FIRST (int *) ;
 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,int *,int ) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int links ;

void
symlist_merge(symlist_t *symlist_dest, symlist_t *symlist_src1,
       symlist_t *symlist_src2)
{
 symbol_node_t *node;

 *symlist_dest = *symlist_src1;
 while((node = SLIST_FIRST(symlist_src2)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(symlist_src2, links);
  SLIST_INSERT_HEAD(symlist_dest, node, links);
 }


 SLIST_INIT(symlist_src1);
 SLIST_INIT(symlist_src2);
}
