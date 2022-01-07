
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ release; } ;


 scalar_t__ sas_port_release ;

int scsi_is_sas_port(const struct device *dev)
{
 return dev->release == sas_port_release;
}
