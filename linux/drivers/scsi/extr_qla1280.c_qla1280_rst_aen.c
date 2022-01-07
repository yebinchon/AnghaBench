
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int reset_active; scalar_t__ reset_marker; int abort_isp_active; scalar_t__ online; } ;
struct scsi_qla_host {size_t ports; TYPE_2__* bus_settings; TYPE_1__ flags; } ;
struct TYPE_4__ {scalar_t__ reset_marker; } ;


 int ENTER (char*) ;
 int LEAVE (char*) ;
 int MK_SYNC_ALL ;
 int qla1280_marker (struct scsi_qla_host*,size_t,int ,int ,int ) ;

__attribute__((used)) static void
qla1280_rst_aen(struct scsi_qla_host *ha)
{
 uint8_t bus;

 ENTER("qla1280_rst_aen");

 if (ha->flags.online && !ha->flags.reset_active &&
     !ha->flags.abort_isp_active) {
  ha->flags.reset_active = 1;
  while (ha->flags.reset_marker) {

   ha->flags.reset_marker = 0;
   for (bus = 0; bus < ha->ports &&
         !ha->flags.reset_marker; bus++) {
    if (ha->bus_settings[bus].reset_marker) {
     ha->bus_settings[bus].reset_marker = 0;
     qla1280_marker(ha, bus, 0, 0,
             MK_SYNC_ALL);
    }
   }
  }
 }

 LEAVE("qla1280_rst_aen");
}
