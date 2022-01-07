
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ release; } ;


 scalar_t__ fc_vport_dev_release ;

__attribute__((used)) static int scsi_is_fc_vport(const struct device *dev)
{
 return dev->release == fc_vport_dev_release;
}
