
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct clone_root {TYPE_2__* root; } ;
struct TYPE_3__ {scalar_t__ objectid; } ;
struct TYPE_4__ {TYPE_1__ root_key; } ;



__attribute__((used)) static int __clone_root_cmp_bsearch(const void *key, const void *elt)
{
 u64 root = (u64)(uintptr_t)key;
 struct clone_root *cr = (struct clone_root *)elt;

 if (root < cr->root->root_key.objectid)
  return -1;
 if (root > cr->root->root_key.objectid)
  return 1;
 return 0;
}
