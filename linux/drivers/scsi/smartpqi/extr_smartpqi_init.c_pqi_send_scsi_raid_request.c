
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pqi_raid_path_request {int sg_descriptors; int header; } ;
struct pqi_raid_error_info {int dummy; } ;
struct pqi_ctrl_info {int pci_dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int pqi_build_raid_path_request (struct pqi_ctrl_info*,struct pqi_raid_path_request*,int ,int *,void*,size_t,int ,int*) ;
 int pqi_pci_unmap (int ,int ,int,int) ;
 int pqi_submit_raid_request_synchronous (struct pqi_ctrl_info*,int *,int ,struct pqi_raid_error_info*,unsigned long) ;

__attribute__((used)) static int pqi_send_scsi_raid_request(struct pqi_ctrl_info *ctrl_info, u8 cmd,
  u8 *scsi3addr, void *buffer, size_t buffer_length, u16 vpd_page,
  struct pqi_raid_error_info *error_info,
  unsigned long timeout_msecs)
{
 int rc;
 enum dma_data_direction dir;
 struct pqi_raid_path_request request;

 rc = pqi_build_raid_path_request(ctrl_info, &request,
  cmd, scsi3addr, buffer,
  buffer_length, vpd_page, &dir);
 if (rc)
  return rc;

 rc = pqi_submit_raid_request_synchronous(ctrl_info, &request.header,
   0, error_info, timeout_msecs);

 pqi_pci_unmap(ctrl_info->pci_dev, request.sg_descriptors, 1, dir);
 return rc;
}
