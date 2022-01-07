
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_bus {int * dbg_dir; } ;


 int debugfs_remove_recursive (int *) ;

void qtnf_debugfs_remove(struct qtnf_bus *bus)
{
 debugfs_remove_recursive(bus->dbg_dir);
 bus->dbg_dir = ((void*)0);
}
