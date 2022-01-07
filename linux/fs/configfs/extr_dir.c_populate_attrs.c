
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configfs_bin_attribute {int dummy; } ;
struct configfs_attribute {int dummy; } ;
struct config_item_type {struct configfs_bin_attribute** ct_bin_attrs; struct configfs_attribute** ct_attrs; } ;
struct config_item {struct config_item_type* ci_type; } ;


 int EINVAL ;
 int configfs_create_bin_file (struct config_item*,struct configfs_bin_attribute*) ;
 int configfs_create_file (struct config_item*,struct configfs_attribute*) ;
 int detach_attrs (struct config_item*) ;

__attribute__((used)) static int populate_attrs(struct config_item *item)
{
 const struct config_item_type *t = item->ci_type;
 struct configfs_attribute *attr;
 struct configfs_bin_attribute *bin_attr;
 int error = 0;
 int i;

 if (!t)
  return -EINVAL;
 if (t->ct_attrs) {
  for (i = 0; (attr = t->ct_attrs[i]) != ((void*)0); i++) {
   if ((error = configfs_create_file(item, attr)))
    break;
  }
 }
 if (t->ct_bin_attrs) {
  for (i = 0; (bin_attr = t->ct_bin_attrs[i]) != ((void*)0); i++) {
   error = configfs_create_bin_file(item, bin_attr);
   if (error)
    break;
  }
 }

 if (error)
  detach_attrs(item);

 return error;
}
