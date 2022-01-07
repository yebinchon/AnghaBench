
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct nvme_ctrl* private; } ;
struct nvme_ctrl {int cntlid; int instance; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmf_dev_mutex ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int nvmf_dev_show(struct seq_file *seq_file, void *private)
{
 struct nvme_ctrl *ctrl;
 int ret = 0;

 mutex_lock(&nvmf_dev_mutex);
 ctrl = seq_file->private;
 if (!ctrl) {
  ret = -EINVAL;
  goto out_unlock;
 }

 seq_printf(seq_file, "instance=%d,cntlid=%d\n",
   ctrl->instance, ctrl->cntlid);

out_unlock:
 mutex_unlock(&nvmf_dev_mutex);
 return ret;
}
