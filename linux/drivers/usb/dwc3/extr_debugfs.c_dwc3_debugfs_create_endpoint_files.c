
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file_operations {int dummy; } ;
struct dwc3_ep {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {char* name; struct file_operations* fops; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int S_IRUGO ;
 int debugfs_create_file (char const*,int ,struct dentry*,struct dwc3_ep*,struct file_operations const*) ;
 TYPE_1__* dwc3_ep_file_map ;

__attribute__((used)) static void dwc3_debugfs_create_endpoint_files(struct dwc3_ep *dep,
  struct dentry *parent)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dwc3_ep_file_map); i++) {
  const struct file_operations *fops = dwc3_ep_file_map[i].fops;
  const char *name = dwc3_ep_file_map[i].name;

  debugfs_create_file(name, S_IRUGO, parent, dep, fops);
 }
}
