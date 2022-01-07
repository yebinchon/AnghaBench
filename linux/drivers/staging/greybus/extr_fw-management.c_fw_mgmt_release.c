
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fw_mgmt {int dummy; } ;
struct file {struct fw_mgmt* private_data; } ;


 int put_fw_mgmt (struct fw_mgmt*) ;

__attribute__((used)) static int fw_mgmt_release(struct inode *inode, struct file *file)
{
 struct fw_mgmt *fw_mgmt = file->private_data;

 put_fw_mgmt(fw_mgmt);
 return 0;
}
