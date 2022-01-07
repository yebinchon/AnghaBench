
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backref_node {int * eb; } ;


 int free_extent_buffer (int *) ;
 int unlock_node_buffer (struct backref_node*) ;

__attribute__((used)) static void drop_node_buffer(struct backref_node *node)
{
 if (node->eb) {
  unlock_node_buffer(node);
  free_extent_buffer(node->eb);
  node->eb = ((void*)0);
 }
}
