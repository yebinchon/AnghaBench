
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int state; } ;
struct nvme_dev {TYPE_1__ ctrl; scalar_t__ subsystem; } ;


 int NVME_CSTS_CFS ;
 int NVME_CSTS_NSSRO ;



__attribute__((used)) static bool nvme_should_reset(struct nvme_dev *dev, u32 csts)
{




 bool nssro = dev->subsystem && (csts & NVME_CSTS_NSSRO);


 switch (dev->ctrl.state) {
 case 128:
 case 129:
  return 0;
 default:
  break;
 }




 if (!(csts & NVME_CSTS_CFS) && !nssro)
  return 0;

 return 1;
}
