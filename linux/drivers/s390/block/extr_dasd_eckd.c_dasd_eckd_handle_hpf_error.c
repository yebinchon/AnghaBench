
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lpum; } ;
struct TYPE_6__ {TYPE_1__ esw1; } ;
struct TYPE_8__ {scalar_t__ sesq; } ;
struct TYPE_7__ {TYPE_4__ tm; } ;
struct irb {TYPE_2__ esw; TYPE_3__ scsw; } ;
struct dasd_eckd_private {int fcx_max_data; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;


 int DASD_STOPPED_NOT_ACC ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;
 scalar_t__ SCSW_SESQ_DEV_NOFCX ;
 scalar_t__ SCSW_SESQ_PATH_NOFCX ;
 int dasd_device_set_stop_bits (struct dasd_device*,int ) ;
 int dasd_eckd_disable_hpf_device (struct dasd_device*) ;
 scalar_t__ dasd_eckd_disable_hpf_path (struct dasd_device*,int ) ;
 int dasd_path_get_hpfpm (struct dasd_device*) ;
 int dasd_path_set_tbvpm (struct dasd_device*,int ) ;
 int dasd_schedule_requeue (struct dasd_device*) ;

__attribute__((used)) static void dasd_eckd_handle_hpf_error(struct dasd_device *device,
           struct irb *irb)
{
 struct dasd_eckd_private *private = device->private;

 if (!private->fcx_max_data) {

  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
         "Trying to disable HPF for a non HPF device");
  return;
 }
 if (irb->scsw.tm.sesq == SCSW_SESQ_DEV_NOFCX) {
  dasd_eckd_disable_hpf_device(device);
 } else if (irb->scsw.tm.sesq == SCSW_SESQ_PATH_NOFCX) {
  if (dasd_eckd_disable_hpf_path(device, irb->esw.esw1.lpum))
   return;
  dasd_eckd_disable_hpf_device(device);
  dasd_path_set_tbvpm(device,
      dasd_path_get_hpfpm(device));
 }




 dasd_device_set_stop_bits(device, DASD_STOPPED_NOT_ACC);
 dasd_schedule_requeue(device);
}
