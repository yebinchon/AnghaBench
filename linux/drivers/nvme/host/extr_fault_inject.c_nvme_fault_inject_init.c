
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fault_attr {int dummy; } ;
struct nvme_fault_inject {int dont_retry; int status; struct dentry* parent; struct fault_attr attr; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int NVME_SC_INVALID_OPCODE ;
 int debugfs_create_bool (char*,int,struct dentry*,int*) ;
 struct dentry* debugfs_create_dir (char const*,int *) ;
 int debugfs_create_x16 (char*,int,struct dentry*,int *) ;
 int debugfs_remove_recursive (struct dentry*) ;
 struct fault_attr fail_default_attr ;
 scalar_t__ fail_request ;
 struct dentry* fault_create_debugfs_attr (char*,struct dentry*,struct fault_attr*) ;
 int pr_warn (char*,char const*) ;
 int setup_fault_attr (struct fault_attr*,scalar_t__) ;

void nvme_fault_inject_init(struct nvme_fault_inject *fault_inj,
       const char *dev_name)
{
 struct dentry *dir, *parent;
 struct fault_attr *attr = &fault_inj->attr;


 if (fail_request)
  setup_fault_attr(&fail_default_attr, fail_request);


 parent = debugfs_create_dir(dev_name, ((void*)0));
 if (!parent) {
  pr_warn("%s: failed to create debugfs directory\n", dev_name);
  return;
 }

 *attr = fail_default_attr;
 dir = fault_create_debugfs_attr("fault_inject", parent, attr);
 if (IS_ERR(dir)) {
  pr_warn("%s: failed to create debugfs attr\n", dev_name);
  debugfs_remove_recursive(parent);
  return;
 }
 fault_inj->parent = parent;


 fault_inj->status = NVME_SC_INVALID_OPCODE;
 fault_inj->dont_retry = 1;
 debugfs_create_x16("status", 0600, dir, &fault_inj->status);
 debugfs_create_bool("dont_retry", 0600, dir, &fault_inj->dont_retry);
}
