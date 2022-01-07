
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct scsi_qla_host {int dummy; } ;
struct qla27xx_fwdt_template {int template_size; } ;


 scalar_t__ qla27xx_fwdt_template_valid (struct qla27xx_fwdt_template*) ;
 int qla27xx_walk_template (struct scsi_qla_host*,struct qla27xx_fwdt_template*,int *,int *) ;

ulong
qla27xx_fwdt_calculate_dump_size(struct scsi_qla_host *vha, void *p)
{
 struct qla27xx_fwdt_template *tmp = p;
 ulong len = 0;

 if (qla27xx_fwdt_template_valid(tmp)) {
  len = tmp->template_size;
  qla27xx_walk_template(vha, tmp, ((void*)0), &len);
 }

 return len;
}
