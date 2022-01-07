
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ release; } ;


 scalar_t__ fc_rport_dev_release ;

int scsi_is_fc_rport(const struct device *dev)
{
 return dev->release == fc_rport_dev_release;
}
