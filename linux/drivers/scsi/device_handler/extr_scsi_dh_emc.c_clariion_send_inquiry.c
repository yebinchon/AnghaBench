
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct clariion_dh_data {int buffer; } ;


 int CLARIION_BUFFER_SIZE ;
 int SCSI_DH_IO ;
 int parse_sp_info_reply (struct scsi_device*,struct clariion_dh_data*) ;
 int scsi_get_vpd_page (struct scsi_device*,int,int ,int ) ;

__attribute__((used)) static int clariion_send_inquiry(struct scsi_device *sdev,
     struct clariion_dh_data *csdev)
{
 int err = SCSI_DH_IO;

 if (!scsi_get_vpd_page(sdev, 0xC0, csdev->buffer,
          CLARIION_BUFFER_SIZE))
  err = parse_sp_info_reply(sdev, csdev);

 return err;
}
