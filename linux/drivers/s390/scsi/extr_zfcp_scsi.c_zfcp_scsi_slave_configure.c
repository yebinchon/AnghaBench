
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ tagged_supported; } ;


 int default_depth ;
 int scsi_change_queue_depth (struct scsi_device*,int ) ;

__attribute__((used)) static int zfcp_scsi_slave_configure(struct scsi_device *sdp)
{
 if (sdp->tagged_supported)
  scsi_change_queue_depth(sdp, default_depth);
 return 0;
}
