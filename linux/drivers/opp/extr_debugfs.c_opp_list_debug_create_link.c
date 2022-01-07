
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int dentry_name; } ;
struct opp_device {int dentry; int dev; } ;


 int NAME_MAX ;
 int debugfs_create_symlink (char*,int ,int ) ;
 int opp_set_dev_name (int ,char*) ;
 int rootdir ;

__attribute__((used)) static void opp_list_debug_create_link(struct opp_device *opp_dev,
           struct opp_table *opp_table)
{
 char name[NAME_MAX];

 opp_set_dev_name(opp_dev->dev, name);


 opp_dev->dentry = debugfs_create_symlink(name, rootdir,
       opp_table->dentry_name);
}
