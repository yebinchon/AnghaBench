
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_scsi_dev {int dummy; } ;
struct scsi_device {int dummy; } ;


 struct zfcp_scsi_dev* scsi_transport_device_data (struct scsi_device*) ;

__attribute__((used)) static inline struct zfcp_scsi_dev *sdev_to_zfcp(struct scsi_device *sdev)
{
 return scsi_transport_device_data(sdev);
}
