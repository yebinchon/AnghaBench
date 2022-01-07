
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {struct dentry* dentry; int dentry_name; } ;
struct opp_device {struct dentry* dentry; struct device* dev; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_dir (int ,int ) ;
 int opp_set_dev_name (struct device const*,int ) ;
 int rootdir ;

__attribute__((used)) static void opp_list_debug_create_dir(struct opp_device *opp_dev,
          struct opp_table *opp_table)
{
 const struct device *dev = opp_dev->dev;
 struct dentry *d;

 opp_set_dev_name(dev, opp_table->dentry_name);


 d = debugfs_create_dir(opp_table->dentry_name, rootdir);

 opp_dev->dentry = d;
 opp_table->dentry = d;
}
