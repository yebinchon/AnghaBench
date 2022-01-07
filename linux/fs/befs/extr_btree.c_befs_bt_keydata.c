
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct befs_btree_node {scalar_t__ od_node; } ;
typedef int befs_btree_nodehead ;



__attribute__((used)) static char *
befs_bt_keydata(struct befs_btree_node *node)
{
 return (char *) ((void *) node->od_node + sizeof (befs_btree_nodehead));
}
