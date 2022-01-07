
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct scsi_qla_host {int dummy; } ;
struct qla27xx_fwdt_template {int template_size; } ;


 struct qla27xx_fwdt_template* memcpy (void*,struct qla27xx_fwdt_template*,int ) ;
 int ql27xx_edit_template (struct scsi_qla_host*,struct qla27xx_fwdt_template*) ;
 scalar_t__ qla27xx_fwdt_template_valid (struct qla27xx_fwdt_template*) ;
 int qla27xx_walk_template (struct scsi_qla_host*,struct qla27xx_fwdt_template*,void*,int *) ;

__attribute__((used)) static ulong
qla27xx_execute_fwdt_template(struct scsi_qla_host *vha,
    struct qla27xx_fwdt_template *tmp, void *buf)
{
 ulong len = 0;

 if (qla27xx_fwdt_template_valid(tmp)) {
  len = tmp->template_size;
  tmp = memcpy(buf, tmp, len);
  ql27xx_edit_template(vha, tmp);
  qla27xx_walk_template(vha, tmp, buf, &len);
 }

 return len;
}
