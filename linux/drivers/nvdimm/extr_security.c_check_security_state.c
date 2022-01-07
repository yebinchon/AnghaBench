
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct device {int dummy; } ;
struct nvdimm {int flags; TYPE_1__ sec; struct device dev; } ;


 int EBUSY ;
 int EIO ;
 int NDD_SECURITY_OVERWRITE ;
 int NVDIMM_SECURITY_FROZEN ;
 int dev_dbg (struct device*,char*,...) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int check_security_state(struct nvdimm *nvdimm)
{
 struct device *dev = &nvdimm->dev;

 if (test_bit(NVDIMM_SECURITY_FROZEN, &nvdimm->sec.flags)) {
  dev_dbg(dev, "Incorrect security state: %#lx\n",
    nvdimm->sec.flags);
  return -EIO;
 }

 if (test_bit(NDD_SECURITY_OVERWRITE, &nvdimm->flags)) {
  dev_dbg(dev, "Security operation in progress.\n");
  return -EBUSY;
 }

 return 0;
}
