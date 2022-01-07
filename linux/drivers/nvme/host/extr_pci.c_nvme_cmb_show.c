
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int cmbsz; int cmbloc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ,int ) ;
 struct nvme_dev* to_nvme_dev (int ) ;

__attribute__((used)) static ssize_t nvme_cmb_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct nvme_dev *ndev = to_nvme_dev(dev_get_drvdata(dev));

 return scnprintf(buf, PAGE_SIZE, "cmbloc : x%08x\ncmbsz  : x%08x\n",
         ndev->cmbloc, ndev->cmbsz);
}
