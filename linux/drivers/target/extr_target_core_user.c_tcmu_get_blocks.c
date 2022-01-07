
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcmu_dev {scalar_t__ dev_size; } ;
struct TYPE_2__ {scalar_t__ block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
typedef int sector_t ;


 struct tcmu_dev* TCMU_DEV (struct se_device*) ;
 int div_u64 (scalar_t__,scalar_t__) ;

__attribute__((used)) static sector_t tcmu_get_blocks(struct se_device *dev)
{
 struct tcmu_dev *udev = TCMU_DEV(dev);

 return div_u64(udev->dev_size - dev->dev_attrib.block_size,
         dev->dev_attrib.block_size);
}
