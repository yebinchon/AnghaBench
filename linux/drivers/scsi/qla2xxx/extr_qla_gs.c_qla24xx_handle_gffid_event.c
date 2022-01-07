
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_arg {int * fcport; } ;
typedef int scsi_qla_host_t ;
typedef int fc_port_t ;


 int qla24xx_post_gnl_work (int *,int *) ;

void qla24xx_handle_gffid_event(scsi_qla_host_t *vha, struct event_arg *ea)
{
 fc_port_t *fcport = ea->fcport;

 qla24xx_post_gnl_work(vha, fcport);
}
