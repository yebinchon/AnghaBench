
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int host; } ;


 int scsi_host_put (int ) ;

__attribute__((used)) static void qla4xxx_boot_release(void *data)
{
 struct scsi_qla_host *ha = data;

 scsi_host_put(ha->host);
}
