
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int sd; } ;
struct kernfs_node {int dummy; } ;


 int GFP_KERNEL ;
 char* kasprintf (int ,char*,char const*,int) ;
 int kfree (char const*) ;
 int kobject_name (struct kobject*) ;
 char* kstrdup (char const*,int ) ;
 int pr_warn (char*,int ,char const*) ;
 struct kernfs_node* sysfs_get_dirent (int ,char const*) ;
 int sysfs_put (struct kernfs_node*) ;

__attribute__((used)) static const char *safe_name(struct kobject *kobj, const char *orig_name)
{
 const char *name = orig_name;
 struct kernfs_node *kn;
 int i = 0;


 while (i < 16 && (kn = sysfs_get_dirent(kobj->sd, name))) {
  sysfs_put(kn);
  if (name != orig_name)
   kfree(name);
  name = kasprintf(GFP_KERNEL, "%s#%i", orig_name, ++i);
 }

 if (name == orig_name) {
  name = kstrdup(orig_name, GFP_KERNEL);
 } else {
  pr_warn("Duplicate name in %s, renamed to \"%s\"\n",
   kobject_name(kobj), name);
 }
 return name;
}
