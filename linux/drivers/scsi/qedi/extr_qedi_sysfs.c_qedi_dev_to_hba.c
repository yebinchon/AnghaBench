
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 struct qedi_ctx* iscsi_host_priv (struct Scsi_Host*) ;

__attribute__((used)) static inline struct qedi_ctx *qedi_dev_to_hba(struct device *dev)
{
 struct Scsi_Host *shost = class_to_shost(dev);

 return iscsi_host_priv(shost);
}
