
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct scsi_device {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int ENXIO ;
 struct scsi_device* scsi_device_lookup (struct Scsi_Host*,int ,int ,int ) ;
 int scsi_device_put (struct scsi_device*) ;
 struct Scsi_Host* scsi_host_lookup (int ) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_device (struct scsi_device*) ;

__attribute__((used)) static int scsi_remove_single_device(uint host, uint channel, uint id, uint lun)
{
 struct scsi_device *sdev;
 struct Scsi_Host *shost;
 int error = -ENXIO;

 shost = scsi_host_lookup(host);
 if (!shost)
  return error;
 sdev = scsi_device_lookup(shost, channel, id, lun);
 if (sdev) {
  scsi_remove_device(sdev);
  scsi_device_put(sdev);
  error = 0;
 }

 scsi_host_put(shost);
 return error;
}
