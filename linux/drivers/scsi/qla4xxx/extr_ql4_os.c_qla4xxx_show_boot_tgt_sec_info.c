
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ql4_boot_session_info {int dummy; } ;
struct TYPE_2__ {struct ql4_boot_session_info boot_sec_sess; } ;
struct scsi_qla_host {TYPE_1__ boot_tgt; } ;
typedef int ssize_t ;


 int qla4xxx_show_boot_tgt_info (struct ql4_boot_session_info*,int,char*) ;

__attribute__((used)) static ssize_t qla4xxx_show_boot_tgt_sec_info(void *data, int type, char *buf)
{
 struct scsi_qla_host *ha = data;
 struct ql4_boot_session_info *boot_sess = &(ha->boot_tgt.boot_sec_sess);

 return qla4xxx_show_boot_tgt_info(boot_sess, type, buf);
}
