
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct csio_lnode* hostdata; } ;
struct fc_rport {scalar_t__ dd_data; } ;
struct csio_lnode {int dummy; } ;


 int ENXIO ;
 scalar_t__ fc_remote_port_chkready (struct fc_rport*) ;
 int scsi_target (struct scsi_device*) ;
 struct fc_rport* starget_to_rport (int ) ;

__attribute__((used)) static int
csio_slave_alloc(struct scsi_device *sdev)
{
 struct fc_rport *rport = starget_to_rport(scsi_target(sdev));

 if (!rport || fc_remote_port_chkready(rport))
  return -ENXIO;

 sdev->hostdata = *((struct csio_lnode **)(rport->dd_data));

 return 0;
}
