
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pqi_sg_descriptor {int dummy; } ;
struct pqi_ctrl_info {int scsi_ml_can_queue; int max_outstanding_requests; int max_io_slots; int error_buffer_length; int sg_tablesize; int max_sectors; scalar_t__ sg_chain_buffer_length; int max_sg_entries; int max_transfer_size; } ;


 int PAGE_SIZE ;
 int PQI_ERROR_BUFFER_ELEMENT_LENGTH ;
 scalar_t__ PQI_EXTRA_SGL_MEMORY ;
 int PQI_MAX_TRANSFER_SIZE ;
 int PQI_MAX_TRANSFER_SIZE_KDUMP ;
 int PQI_RESERVED_IO_SLOTS ;
 int min (int ,int) ;
 scalar_t__ reset_devices ;

__attribute__((used)) static void pqi_calculate_io_resources(struct pqi_ctrl_info *ctrl_info)
{
 u32 max_transfer_size;
 u32 max_sg_entries;

 ctrl_info->scsi_ml_can_queue =
  ctrl_info->max_outstanding_requests - PQI_RESERVED_IO_SLOTS;
 ctrl_info->max_io_slots = ctrl_info->max_outstanding_requests;

 ctrl_info->error_buffer_length =
  ctrl_info->max_io_slots * PQI_ERROR_BUFFER_ELEMENT_LENGTH;

 if (reset_devices)
  max_transfer_size = min(ctrl_info->max_transfer_size,
   PQI_MAX_TRANSFER_SIZE_KDUMP);
 else
  max_transfer_size = min(ctrl_info->max_transfer_size,
   PQI_MAX_TRANSFER_SIZE);

 max_sg_entries = max_transfer_size / PAGE_SIZE;


 max_sg_entries++;

 max_sg_entries = min(ctrl_info->max_sg_entries, max_sg_entries);

 max_transfer_size = (max_sg_entries - 1) * PAGE_SIZE;

 ctrl_info->sg_chain_buffer_length =
  (max_sg_entries * sizeof(struct pqi_sg_descriptor)) +
  PQI_EXTRA_SGL_MEMORY;
 ctrl_info->sg_tablesize = max_sg_entries;
 ctrl_info->max_sectors = max_transfer_size / 512;
}
