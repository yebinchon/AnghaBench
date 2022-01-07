
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_entry {scalar_t__ root_objectid; scalar_t__ parent; scalar_t__ owner; scalar_t__ offset; } ;



__attribute__((used)) static int comp_refs(struct ref_entry *ref1, struct ref_entry *ref2)
{
 if (ref1->root_objectid < ref2->root_objectid)
  return -1;
 if (ref1->root_objectid > ref2->root_objectid)
  return 1;
 if (ref1->parent < ref2->parent)
  return -1;
 if (ref1->parent > ref2->parent)
  return 1;
 if (ref1->owner < ref2->owner)
  return -1;
 if (ref1->owner > ref2->owner)
  return 1;
 if (ref1->offset < ref2->offset)
  return -1;
 if (ref1->offset > ref2->offset)
  return 1;
 return 0;
}
