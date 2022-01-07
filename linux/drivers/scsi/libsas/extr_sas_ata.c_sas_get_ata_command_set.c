
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct domain_device {scalar_t__ dev_type; scalar_t__ frame_rcvd; } ;
struct dev_to_host_fis {int dummy; } ;
struct ata_taskfile {int dummy; } ;


 int ATA_DEV_UNKNOWN ;
 scalar_t__ SAS_SATA_PENDING ;
 int ata_dev_classify (struct ata_taskfile*) ;
 int ata_tf_from_fis (int const*,struct ata_taskfile*) ;

__attribute__((used)) static int sas_get_ata_command_set(struct domain_device *dev)
{
 struct dev_to_host_fis *fis =
  (struct dev_to_host_fis *) dev->frame_rcvd;
 struct ata_taskfile tf;

 if (dev->dev_type == SAS_SATA_PENDING)
  return ATA_DEV_UNKNOWN;

 ata_tf_from_fis((const u8 *)fis, &tf);

 return ata_dev_classify(&tf);
}
