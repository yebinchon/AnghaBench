
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_bus {int dbg_dir; } ;
struct dentry {int dummy; } ;


 int debugfs_create_dir (char const*,struct dentry*) ;
 struct dentry* qtnf_get_debugfs_dir () ;

void qtnf_debugfs_init(struct qtnf_bus *bus, const char *name)
{
 struct dentry *parent = qtnf_get_debugfs_dir();

 bus->dbg_dir = debugfs_create_dir(name, parent);
}
