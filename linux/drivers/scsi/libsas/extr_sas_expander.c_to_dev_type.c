
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discover_resp {scalar_t__ attached_dev_type; scalar_t__ linkrate; scalar_t__ attached_sata_dev; } ;
typedef enum sas_device_type { ____Placeholder_sas_device_type } sas_device_type ;


 scalar_t__ SAS_LINK_RATE_1_5_GBPS ;
 scalar_t__ SAS_PHY_UNUSED ;
 int SAS_SATA_PENDING ;

__attribute__((used)) static enum sas_device_type to_dev_type(struct discover_resp *dr)
{



 if (dr->attached_dev_type == SAS_PHY_UNUSED && dr->attached_sata_dev &&
     dr->linkrate >= SAS_LINK_RATE_1_5_GBPS)
  return SAS_SATA_PENDING;
 else
  return dr->attached_dev_type;
}
