
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {int all_key_length; } ;
struct befs_btree_node {scalar_t__ od_node; TYPE_1__ head; } ;
typedef int fs16 ;
typedef int befs_btree_nodehead ;



__attribute__((used)) static fs16 *
befs_bt_keylen_index(struct befs_btree_node *node)
{
 const int keylen_align = 8;
 unsigned long int off =
     (sizeof (befs_btree_nodehead) + node->head.all_key_length);
 ulong tmp = off % keylen_align;

 if (tmp)
  off += keylen_align - tmp;

 return (fs16 *) ((void *) node->od_node + off);
}
