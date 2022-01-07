
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct aac_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 scalar_t__ PMC_DEVICE_S6 ;
 scalar_t__ PMC_DEVICE_S7 ;
 scalar_t__ PMC_DEVICE_S8 ;

__attribute__((used)) static inline int aac_is_src(struct aac_dev *dev)
{
 u16 device = dev->pdev->device;

 if (device == PMC_DEVICE_S6 ||
  device == PMC_DEVICE_S7 ||
  device == PMC_DEVICE_S8)
  return 1;
 return 0;
}
