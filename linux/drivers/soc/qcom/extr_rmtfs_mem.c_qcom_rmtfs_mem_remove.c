
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_scm_vmperm {int perm; int vmid; } ;
struct qcom_rmtfs_mem {int dev; int cdev; scalar_t__ perms; int size; int addr; } ;
struct platform_device {int dev; } ;


 int QCOM_SCM_PERM_RW ;
 int QCOM_SCM_VMID_HLOS ;
 int cdev_device_del (int *,int *) ;
 struct qcom_rmtfs_mem* dev_get_drvdata (int *) ;
 int put_device (int *) ;
 int qcom_scm_assign_mem (int ,int ,scalar_t__*,struct qcom_scm_vmperm*,int) ;

__attribute__((used)) static int qcom_rmtfs_mem_remove(struct platform_device *pdev)
{
 struct qcom_rmtfs_mem *rmtfs_mem = dev_get_drvdata(&pdev->dev);
 struct qcom_scm_vmperm perm;

 if (rmtfs_mem->perms) {
  perm.vmid = QCOM_SCM_VMID_HLOS;
  perm.perm = QCOM_SCM_PERM_RW;

  qcom_scm_assign_mem(rmtfs_mem->addr, rmtfs_mem->size,
        &rmtfs_mem->perms, &perm, 1);
 }

 cdev_device_del(&rmtfs_mem->cdev, &rmtfs_mem->dev);
 put_device(&rmtfs_mem->dev);

 return 0;
}
