
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct asus_wmi_debugfs_node* i_private; } ;
struct file {int dummy; } ;
struct asus_wmi_debugfs_node {int asus; int show; } ;


 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int asus_wmi_debugfs_open(struct inode *inode, struct file *file)
{
 struct asus_wmi_debugfs_node *node = inode->i_private;

 return single_open(file, node->show, node->asus);
}
