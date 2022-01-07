
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_slave {int debugfs; } ;


 int debugfs_remove_recursive (int ) ;

void sdw_slave_debugfs_exit(struct sdw_slave *slave)
{
 debugfs_remove_recursive(slave->debugfs);
}
