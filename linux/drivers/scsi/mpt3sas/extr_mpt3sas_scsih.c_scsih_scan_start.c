
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;
struct MPT3SAS_ADAPTER {int start_scan; } ;


 int diag_buffer_enable ;
 scalar_t__ disable_discovery ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*) ;
 int mpt3sas_enable_diag_buffer (struct MPT3SAS_ADAPTER*,int) ;
 int mpt3sas_port_enable (struct MPT3SAS_ADAPTER*) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static void
scsih_scan_start(struct Scsi_Host *shost)
{
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);
 int rc;
 if (diag_buffer_enable != -1 && diag_buffer_enable != 0)
  mpt3sas_enable_diag_buffer(ioc, diag_buffer_enable);

 if (disable_discovery > 0)
  return;

 ioc->start_scan = 1;
 rc = mpt3sas_port_enable(ioc);

 if (rc != 0)
  ioc_info(ioc, "port enable: FAILED\n");
}
