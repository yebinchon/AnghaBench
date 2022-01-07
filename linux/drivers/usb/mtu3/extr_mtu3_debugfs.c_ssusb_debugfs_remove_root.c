
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int * dbgfs_root; } ;


 int debugfs_remove_recursive (int *) ;

void ssusb_debugfs_remove_root(struct ssusb_mtk *ssusb)
{
 debugfs_remove_recursive(ssusb->dbgfs_root);
 ssusb->dbgfs_root = ((void*)0);
}
