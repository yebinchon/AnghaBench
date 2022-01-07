
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int host; } ;


 int iscsi_host_for_each_session (int ,int ) ;
 int qla4xxx_relogin_devices ;

__attribute__((used)) static void qla4xxx_relogin_all_devices(struct scsi_qla_host *ha)
{
 iscsi_host_for_each_session(ha->host, qla4xxx_relogin_devices);
}
