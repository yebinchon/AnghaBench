
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct srp_rport {TYPE_1__ dev; int mutex; } ;
struct srp_internal {TYPE_2__* f; } ;
struct Scsi_Host {int transportt; } ;
struct TYPE_4__ {int (* terminate_rport_io ) (struct srp_rport*) ;} ;


 int SDEV_TRANSPORT_OFFLINE ;
 int SRP_RPORT_FAIL_FAST ;
 int lockdep_assert_held (int *) ;
 struct Scsi_Host* rport_to_shost (struct srp_rport*) ;
 int scsi_target_block (int ) ;
 int scsi_target_unblock (int ,int ) ;
 scalar_t__ srp_rport_set_state (struct srp_rport*,int ) ;
 int stub1 (struct srp_rport*) ;
 struct srp_internal* to_srp_internal (int ) ;

__attribute__((used)) static void __rport_fail_io_fast(struct srp_rport *rport)
{
 struct Scsi_Host *shost = rport_to_shost(rport);
 struct srp_internal *i;

 lockdep_assert_held(&rport->mutex);

 if (srp_rport_set_state(rport, SRP_RPORT_FAIL_FAST))
  return;




 scsi_target_block(rport->dev.parent);
 scsi_target_unblock(rport->dev.parent, SDEV_TRANSPORT_OFFLINE);


 i = to_srp_internal(shost->transportt);
 if (i->f->terminate_rport_io)
  i->f->terminate_rport_io(rport);
}
