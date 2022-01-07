
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_cdev; } ;
struct fw_mgmt {int dummy; } ;
struct file {struct fw_mgmt* private_data; } ;


 int ENODEV ;
 struct fw_mgmt* get_fw_mgmt (int ) ;

__attribute__((used)) static int fw_mgmt_open(struct inode *inode, struct file *file)
{
 struct fw_mgmt *fw_mgmt = get_fw_mgmt(inode->i_cdev);


 if (fw_mgmt) {
  file->private_data = fw_mgmt;
  return 0;
 }

 return -ENODEV;
}
