
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdw_slave {struct dentry* debugfs; int dev; TYPE_1__* bus; } ;
struct dentry {int dummy; } ;
typedef int name ;
struct TYPE_2__ {struct dentry* debugfs; } ;


 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_file (char*,int,struct dentry*,struct sdw_slave*,int *) ;
 char* dev_name (int *) ;
 int sdw_slave_reg_fops ;
 int snprintf (char*,int,char*,char*) ;

void sdw_slave_debugfs_init(struct sdw_slave *slave)
{
 struct dentry *master;
 struct dentry *d;
 char name[32];

 master = slave->bus->debugfs;


 snprintf(name, sizeof(name), "%s", dev_name(&slave->dev));
 d = debugfs_create_dir(name, master);

 debugfs_create_file("registers", 0400, d, slave, &sdw_slave_reg_fops);

 slave->debugfs = d;
}
