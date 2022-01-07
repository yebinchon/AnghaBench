
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm63xx_udc {int debugfs_root; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void bcm63xx_udc_cleanup_debugfs(struct bcm63xx_udc *udc)
{
 debugfs_remove_recursive(udc->debugfs_root);
}
