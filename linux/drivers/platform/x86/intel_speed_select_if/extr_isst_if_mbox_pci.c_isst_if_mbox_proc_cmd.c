
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct isst_if_mbox_cmd {int req_data; int parameter; int logical_cpu; int sub_command; int command; } ;
struct isst_if_device {int mutex; } ;


 int CAP_SYS_ADMIN ;
 long EINVAL ;
 long EPERM ;
 int capable (int ) ;
 struct pci_dev* isst_if_get_pci_dev (int ,int,int,int) ;
 int isst_if_mbox_cmd (struct pci_dev*,struct isst_if_mbox_cmd*) ;
 scalar_t__ isst_if_mbox_cmd_invalid (struct isst_if_mbox_cmd*) ;
 scalar_t__ isst_if_mbox_cmd_set_req (struct isst_if_mbox_cmd*) ;
 int isst_store_cmd (int ,int ,int ,int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct isst_if_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static long isst_if_mbox_proc_cmd(u8 *cmd_ptr, int *write_only, int resume)
{
 struct isst_if_mbox_cmd *mbox_cmd;
 struct isst_if_device *punit_dev;
 struct pci_dev *pdev;
 int ret;

 mbox_cmd = (struct isst_if_mbox_cmd *)cmd_ptr;

 if (isst_if_mbox_cmd_invalid(mbox_cmd))
  return -EINVAL;

 if (isst_if_mbox_cmd_set_req(mbox_cmd) && !capable(CAP_SYS_ADMIN))
  return -EPERM;

 pdev = isst_if_get_pci_dev(mbox_cmd->logical_cpu, 1, 30, 1);
 if (!pdev)
  return -EINVAL;

 punit_dev = pci_get_drvdata(pdev);
 if (!punit_dev)
  return -EINVAL;





 mutex_lock(&punit_dev->mutex);
 ret = isst_if_mbox_cmd(pdev, mbox_cmd);
 if (!ret && !resume && isst_if_mbox_cmd_set_req(mbox_cmd))
  ret = isst_store_cmd(mbox_cmd->command,
         mbox_cmd->sub_command,
         mbox_cmd->logical_cpu, 1,
         mbox_cmd->parameter,
         mbox_cmd->req_data);
 mutex_unlock(&punit_dev->mutex);
 if (ret)
  return ret;

 *write_only = 0;

 return 0;
}
