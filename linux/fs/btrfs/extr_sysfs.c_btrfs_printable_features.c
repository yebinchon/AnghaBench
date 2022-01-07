
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef enum btrfs_feature_set { ____Placeholder_btrfs_feature_set } btrfs_feature_set ;
struct TYPE_5__ {char* name; } ;
struct TYPE_6__ {TYPE_1__ attr; } ;
struct TYPE_7__ {TYPE_2__ kobj_attr; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int GFP_KERNEL ;
 TYPE_3__** btrfs_feature_attrs ;
 char* kmalloc (size_t,int ) ;
 scalar_t__ snprintf (char*,size_t,char*,char*,char const*) ;

char *btrfs_printable_features(enum btrfs_feature_set set, u64 flags)
{
 size_t bufsize = 4096;
 int len = 0;
 int i;
 char *str;

 str = kmalloc(bufsize, GFP_KERNEL);
 if (!str)
  return str;

 for (i = 0; i < ARRAY_SIZE(btrfs_feature_attrs[set]); i++) {
  const char *name;

  if (!(flags & (1ULL << i)))
   continue;

  name = btrfs_feature_attrs[set][i].kobj_attr.attr.name;
  len += snprintf(str + len, bufsize - len, "%s%s",
    len ? "," : "", name);
 }

 return str;
}
