
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa_defrag_extent_backref {scalar_t__ root_id; scalar_t__ inum; scalar_t__ file_pos; } ;



__attribute__((used)) static int backref_comp(struct sa_defrag_extent_backref *b1,
   struct sa_defrag_extent_backref *b2)
{
 if (b1->root_id < b2->root_id)
  return -1;
 else if (b1->root_id > b2->root_id)
  return 1;

 if (b1->inum < b2->inum)
  return -1;
 else if (b1->inum > b2->inum)
  return 1;

 if (b1->file_pos < b2->file_pos)
  return -1;
 else if (b1->file_pos > b2->file_pos)
  return 1;
 return 0;
}
