
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_rport {scalar_t__ port_state; int fast_io_fail_tmo; } ;
struct fc_internal {TYPE_1__* f; } ;
struct Scsi_Host {int transportt; } ;
struct TYPE_2__ {int (* set_rport_dev_loss_tmo ) (struct fc_rport*,unsigned long) ;} ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ FC_PORTSTATE_BLOCKED ;
 scalar_t__ FC_PORTSTATE_DELETED ;
 scalar_t__ FC_PORTSTATE_NOTPRESENT ;
 unsigned long SCSI_DEVICE_BLOCK_MAX_TIMEOUT ;
 unsigned long UINT_MAX ;
 struct Scsi_Host* rport_to_shost (struct fc_rport*) ;
 int stub1 (struct fc_rport*,unsigned long) ;
 struct fc_internal* to_fc_internal (int ) ;

__attribute__((used)) static int fc_rport_set_dev_loss_tmo(struct fc_rport *rport,
         unsigned long val)
{
 struct Scsi_Host *shost = rport_to_shost(rport);
 struct fc_internal *i = to_fc_internal(shost->transportt);

 if ((rport->port_state == FC_PORTSTATE_BLOCKED) ||
     (rport->port_state == FC_PORTSTATE_DELETED) ||
     (rport->port_state == FC_PORTSTATE_NOTPRESENT))
  return -EBUSY;



 if (val > UINT_MAX)
  return -EINVAL;





 if (rport->fast_io_fail_tmo == -1 &&
     val > SCSI_DEVICE_BLOCK_MAX_TIMEOUT)
  return -EINVAL;

 i->f->set_rport_dev_loss_tmo(rport, val);
 return 0;
}
