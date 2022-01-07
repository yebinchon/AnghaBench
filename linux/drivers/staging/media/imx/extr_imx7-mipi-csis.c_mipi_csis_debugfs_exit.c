
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_state {int debugfs_root; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void mipi_csis_debugfs_exit(struct csi_state *state)
{
 debugfs_remove_recursive(state->debugfs_root);
}
