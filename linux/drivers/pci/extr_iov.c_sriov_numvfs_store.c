
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dev; TYPE_2__* driver; TYPE_1__* sriov; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int (* sriov_configure ) (struct pci_dev*,int) ;} ;
struct TYPE_3__ {int num_VFs; } ;


 int EBUSY ;
 int ENOENT ;
 int ERANGE ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int kstrtou16 (char const*,int ,int*) ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_sriov_get_totalvfs (struct pci_dev*) ;
 int pci_warn (struct pci_dev*,char*,int,int) ;
 int stub1 (struct pci_dev*,int) ;
 int stub2 (struct pci_dev*,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t sriov_numvfs_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 int ret;
 u16 num_vfs;

 ret = kstrtou16(buf, 0, &num_vfs);
 if (ret < 0)
  return ret;

 if (num_vfs > pci_sriov_get_totalvfs(pdev))
  return -ERANGE;

 device_lock(&pdev->dev);

 if (num_vfs == pdev->sriov->num_VFs)
  goto exit;


 if (!pdev->driver || !pdev->driver->sriov_configure) {
  pci_info(pdev, "Driver does not support SRIOV configuration via sysfs\n");
  ret = -ENOENT;
  goto exit;
 }

 if (num_vfs == 0) {

  ret = pdev->driver->sriov_configure(pdev, 0);
  goto exit;
 }


 if (pdev->sriov->num_VFs) {
  pci_warn(pdev, "%d VFs already enabled. Disable before enabling %d VFs\n",
    pdev->sriov->num_VFs, num_vfs);
  ret = -EBUSY;
  goto exit;
 }

 ret = pdev->driver->sriov_configure(pdev, num_vfs);
 if (ret < 0)
  goto exit;

 if (ret != num_vfs)
  pci_warn(pdev, "%d VFs requested; only %d enabled\n",
    num_vfs, ret);

exit:
 device_unlock(&pdev->dev);

 if (ret < 0)
  return ret;

 return count;
}
