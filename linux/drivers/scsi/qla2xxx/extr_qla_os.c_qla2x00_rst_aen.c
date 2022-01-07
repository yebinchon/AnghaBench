
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reset_active; scalar_t__ online; } ;
struct TYPE_5__ {int marker_needed; int dpc_flags; int loop_down_timer; TYPE_1__ flags; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int ABORT_ISP_ACTIVE ;
 int RESET_MARKER_NEEDED ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
qla2x00_rst_aen(scsi_qla_host_t *vha)
{
 if (vha->flags.online && !vha->flags.reset_active &&
     !atomic_read(&vha->loop_down_timer) &&
     !(test_bit(ABORT_ISP_ACTIVE, &vha->dpc_flags))) {
  do {
   clear_bit(RESET_MARKER_NEEDED, &vha->dpc_flags);





   vha->marker_needed = 1;
  } while (!atomic_read(&vha->loop_down_timer) &&
      (test_bit(RESET_MARKER_NEEDED, &vha->dpc_flags)));
 }
}
