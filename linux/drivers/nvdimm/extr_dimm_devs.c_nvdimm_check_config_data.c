
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int flags; int cmd_mask; } ;
struct device {int dummy; } ;


 int ENOTTY ;
 int ENXIO ;
 int NDD_ALIASING ;
 int ND_CMD_GET_CONFIG_DATA ;
 scalar_t__ test_bit (int ,int *) ;
 struct nvdimm* to_nvdimm (struct device*) ;

int nvdimm_check_config_data(struct device *dev)
{
 struct nvdimm *nvdimm = to_nvdimm(dev);

 if (!nvdimm->cmd_mask ||
     !test_bit(ND_CMD_GET_CONFIG_DATA, &nvdimm->cmd_mask)) {
  if (test_bit(NDD_ALIASING, &nvdimm->flags))
   return -ENXIO;
  else
   return -ENOTTY;
 }

 return 0;
}
