
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int regset; int root; } ;


 int debugfs_remove_recursive (int ) ;
 int kfree (int ) ;

void dwc3_debugfs_exit(struct dwc3 *dwc)
{
 debugfs_remove_recursive(dwc->root);
 kfree(dwc->regset);
}
