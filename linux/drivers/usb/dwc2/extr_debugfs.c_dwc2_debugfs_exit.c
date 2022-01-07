
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int * debug_root; } ;


 int debugfs_remove_recursive (int *) ;

void dwc2_debugfs_exit(struct dwc2_hsotg *hsotg)
{
 debugfs_remove_recursive(hsotg->debug_root);
 hsotg->debug_root = ((void*)0);
}
