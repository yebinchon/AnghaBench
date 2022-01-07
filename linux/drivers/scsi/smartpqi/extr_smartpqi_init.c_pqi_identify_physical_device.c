
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct pqi_scsi_dev {int scsi3addr; } ;
struct pqi_raid_path_request {int sg_descriptors; int header; void** cdb; } ;
struct pqi_ctrl_info {int pci_dev; } ;
struct bmic_identify_physical_device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BMIC_IDENTIFY_PHYSICAL_DEVICE ;
 int CISS_GET_DRIVE_NUMBER (int ) ;
 int NO_TIMEOUT ;
 int RAID_CTLR_LUNID ;
 int pqi_build_raid_path_request (struct pqi_ctrl_info*,struct pqi_raid_path_request*,int ,int ,struct bmic_identify_physical_device*,size_t,int ,int*) ;
 int pqi_pci_unmap (int ,int ,int,int) ;
 int pqi_submit_raid_request_synchronous (struct pqi_ctrl_info*,int *,int ,int *,int ) ;

__attribute__((used)) static int pqi_identify_physical_device(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device,
 struct bmic_identify_physical_device *buffer,
 size_t buffer_length)
{
 int rc;
 enum dma_data_direction dir;
 u16 bmic_device_index;
 struct pqi_raid_path_request request;

 rc = pqi_build_raid_path_request(ctrl_info, &request,
  BMIC_IDENTIFY_PHYSICAL_DEVICE, RAID_CTLR_LUNID, buffer,
  buffer_length, 0, &dir);
 if (rc)
  return rc;

 bmic_device_index = CISS_GET_DRIVE_NUMBER(device->scsi3addr);
 request.cdb[2] = (u8)bmic_device_index;
 request.cdb[9] = (u8)(bmic_device_index >> 8);

 rc = pqi_submit_raid_request_synchronous(ctrl_info, &request.header,
  0, ((void*)0), NO_TIMEOUT);

 pqi_pci_unmap(ctrl_info->pci_dev, request.sg_descriptors, 1, dir);
 return rc;
}
