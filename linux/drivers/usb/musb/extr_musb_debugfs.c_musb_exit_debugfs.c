
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int debugfs_root; } ;


 int debugfs_remove_recursive (int ) ;

void musb_exit_debugfs(struct musb *musb)
{
 debugfs_remove_recursive(musb->debugfs_root);
}
