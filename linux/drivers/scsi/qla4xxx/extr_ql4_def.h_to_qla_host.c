
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 scalar_t__ iscsi_host_priv (struct Scsi_Host*) ;

__attribute__((used)) static inline struct scsi_qla_host* to_qla_host(struct Scsi_Host *shost)
{
 return (struct scsi_qla_host *)iscsi_host_priv(shost);
}
