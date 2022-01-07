
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
struct imm_ntfy_from_isp {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 int __qlt_send_term_imm_notif (struct scsi_qla_host*,struct imm_ntfy_from_isp*) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static void qlt_send_term_imm_notif(struct scsi_qla_host *vha,
 struct imm_ntfy_from_isp *imm, int ha_locked)
{
 int rc;

 WARN_ON_ONCE(!ha_locked);
 rc = __qlt_send_term_imm_notif(vha, imm);
 pr_debug("rc = %d\n", rc);
}
