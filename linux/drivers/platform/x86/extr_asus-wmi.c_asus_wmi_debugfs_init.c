
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct asus_wmi_debugfs_node {int name; struct asus_wmi* asus; } ;
struct TYPE_4__ {int root; int ctrl_param; int dev_id; int method_id; } ;
struct asus_wmi {TYPE_2__ debug; TYPE_1__* driver; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (struct asus_wmi_debugfs_node*) ;
 int S_IFREG ;
 int S_IRUGO ;
 int S_IWUSR ;
 struct asus_wmi_debugfs_node* asus_wmi_debug_files ;
 int asus_wmi_debugfs_io_ops ;
 int debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (int ,int,int ,struct asus_wmi_debugfs_node*,int *) ;
 int debugfs_create_x32 (char*,int,int ,int *) ;

__attribute__((used)) static void asus_wmi_debugfs_init(struct asus_wmi *asus)
{
 int i;

 asus->debug.root = debugfs_create_dir(asus->driver->name, ((void*)0));

 debugfs_create_x32("method_id", S_IRUGO | S_IWUSR, asus->debug.root,
      &asus->debug.method_id);

 debugfs_create_x32("dev_id", S_IRUGO | S_IWUSR, asus->debug.root,
      &asus->debug.dev_id);

 debugfs_create_x32("ctrl_param", S_IRUGO | S_IWUSR, asus->debug.root,
      &asus->debug.ctrl_param);

 for (i = 0; i < ARRAY_SIZE(asus_wmi_debug_files); i++) {
  struct asus_wmi_debugfs_node *node = &asus_wmi_debug_files[i];

  node->asus = asus;
  debugfs_create_file(node->name, S_IFREG | S_IRUGO,
        asus->debug.root, node,
        &asus_wmi_debugfs_io_ops);
 }
}
