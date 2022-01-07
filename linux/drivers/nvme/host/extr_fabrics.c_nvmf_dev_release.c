
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct nvme_ctrl* private; } ;
struct nvme_ctrl {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int nvme_put_ctrl (struct nvme_ctrl*) ;
 int single_release (struct inode*,struct file*) ;

__attribute__((used)) static int nvmf_dev_release(struct inode *inode, struct file *file)
{
 struct seq_file *seq_file = file->private_data;
 struct nvme_ctrl *ctrl = seq_file->private;

 if (ctrl)
  nvme_put_ctrl(ctrl);
 return single_release(inode, file);
}
