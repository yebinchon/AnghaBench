
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_to_phy (struct device*) ;
 int dev_to_sas_port (struct device*) ;
 int sas_phy_delete (int ) ;
 int sas_port_delete (int ) ;
 scalar_t__ scsi_is_sas_phy (struct device*) ;
 scalar_t__ scsi_is_sas_port (struct device*) ;

__attribute__((used)) static int do_sas_phy_delete(struct device *dev, void *data)
{
 int pass = (int)(unsigned long)data;

 if (pass == 0 && scsi_is_sas_port(dev))
  sas_port_delete(dev_to_sas_port(dev));
 else if (pass == 1 && scsi_is_sas_phy(dev))
  sas_phy_delete(dev_to_phy(dev));
 return 0;
}
