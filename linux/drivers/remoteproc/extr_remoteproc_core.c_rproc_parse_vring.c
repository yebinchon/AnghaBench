
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_vring {struct rproc_vdev* rvdev; scalar_t__ align; scalar_t__ len; } ;
struct rproc_vdev {struct rproc_vring* vring; struct rproc* rproc; } ;
struct device {int dummy; } ;
struct rproc {struct device dev; } ;
struct fw_rsc_vdev_vring {scalar_t__ align; scalar_t__ num; int da; } ;
struct fw_rsc_vdev {struct fw_rsc_vdev_vring* vring; } ;


 int EINVAL ;
 int dev_dbg (struct device*,char*,int,int ,scalar_t__,scalar_t__) ;
 int dev_err (struct device*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
rproc_parse_vring(struct rproc_vdev *rvdev, struct fw_rsc_vdev *rsc, int i)
{
 struct rproc *rproc = rvdev->rproc;
 struct device *dev = &rproc->dev;
 struct fw_rsc_vdev_vring *vring = &rsc->vring[i];
 struct rproc_vring *rvring = &rvdev->vring[i];

 dev_dbg(dev, "vdev rsc: vring%d: da 0x%x, qsz %d, align %d\n",
  i, vring->da, vring->num, vring->align);


 if (!vring->num || !vring->align) {
  dev_err(dev, "invalid qsz (%d) or alignment (%d)\n",
   vring->num, vring->align);
  return -EINVAL;
 }

 rvring->len = vring->num;
 rvring->align = vring->align;
 rvring->rvdev = rvdev;

 return 0;
}
