
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct fc_rport {int dummy; } ;


 int ENXIO ;
 scalar_t__ fc_remote_port_chkready (struct fc_rport*) ;
 int fnic_max_qdepth ;
 int scsi_change_queue_depth (struct scsi_device*,int ) ;
 int scsi_target (struct scsi_device*) ;
 struct fc_rport* starget_to_rport (int ) ;

__attribute__((used)) static int fnic_slave_alloc(struct scsi_device *sdev)
{
 struct fc_rport *rport = starget_to_rport(scsi_target(sdev));

 if (!rport || fc_remote_port_chkready(rport))
  return -ENXIO;

 scsi_change_queue_depth(sdev, fnic_max_qdepth);
 return 0;
}
