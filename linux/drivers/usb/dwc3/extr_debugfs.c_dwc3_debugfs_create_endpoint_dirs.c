
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_ep {int dummy; } ;
struct dwc3 {int num_eps; struct dwc3_ep** eps; } ;
struct dentry {int dummy; } ;


 int dwc3_debugfs_create_endpoint_dir (struct dwc3_ep*,struct dentry*) ;

__attribute__((used)) static void dwc3_debugfs_create_endpoint_dirs(struct dwc3 *dwc,
  struct dentry *parent)
{
 int i;

 for (i = 0; i < dwc->num_eps; i++) {
  struct dwc3_ep *dep = dwc->eps[i];

  if (!dep)
   continue;

  dwc3_debugfs_create_endpoint_dir(dep, parent);
 }
}
