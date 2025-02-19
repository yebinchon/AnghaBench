
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct btrfs_delayed_data_ref {scalar_t__ root; scalar_t__ objectid; scalar_t__ offset; scalar_t__ parent; TYPE_1__ node; } ;


 scalar_t__ BTRFS_EXTENT_DATA_REF_KEY ;

__attribute__((used)) static int comp_data_refs(struct btrfs_delayed_data_ref *ref1,
     struct btrfs_delayed_data_ref *ref2)
{
 if (ref1->node.type == BTRFS_EXTENT_DATA_REF_KEY) {
  if (ref1->root < ref2->root)
   return -1;
  if (ref1->root > ref2->root)
   return 1;
  if (ref1->objectid < ref2->objectid)
   return -1;
  if (ref1->objectid > ref2->objectid)
   return 1;
  if (ref1->offset < ref2->offset)
   return -1;
  if (ref1->offset > ref2->offset)
   return 1;
 } else {
  if (ref1->parent < ref2->parent)
   return -1;
  if (ref1->parent > ref2->parent)
   return 1;
 }
 return 0;
}
