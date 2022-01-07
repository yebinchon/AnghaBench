
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_ep {int name; } ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_dir (int ,struct dentry*) ;
 int dwc3_debugfs_create_endpoint_files (struct dwc3_ep*,struct dentry*) ;

__attribute__((used)) static void dwc3_debugfs_create_endpoint_dir(struct dwc3_ep *dep,
  struct dentry *parent)
{
 struct dentry *dir;

 dir = debugfs_create_dir(dep->name, parent);
 dwc3_debugfs_create_endpoint_files(dep, dir);
}
