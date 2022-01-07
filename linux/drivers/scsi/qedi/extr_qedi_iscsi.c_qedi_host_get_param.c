
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int src_ip; int ip_type; int mac; } ;
struct Scsi_Host {int host_no; } ;
typedef enum iscsi_host_param { ____Placeholder_iscsi_host_param } iscsi_host_param ;





 int TCP_IPV4 ;
 int iscsi_host_get_param (struct Scsi_Host*,int,char*) ;
 struct qedi_ctx* iscsi_host_priv (struct Scsi_Host*) ;
 int sprintf (char*,char*,int) ;
 int sysfs_format_mac (char*,int ,int) ;

__attribute__((used)) static int qedi_host_get_param(struct Scsi_Host *shost,
          enum iscsi_host_param param, char *buf)
{
 struct qedi_ctx *qedi;
 int len;

 qedi = iscsi_host_priv(shost);

 switch (param) {
 case 130:
  len = sysfs_format_mac(buf, qedi->mac, 6);
  break;
 case 128:
  len = sprintf(buf, "host%d\n", shost->host_no);
  break;
 case 129:
  if (qedi->ip_type == TCP_IPV4)
   len = sprintf(buf, "%pI4\n", qedi->src_ip);
  else
   len = sprintf(buf, "%pI6\n", qedi->src_ip);
  break;
 default:
  return iscsi_host_get_param(shost, param, buf);
 }

 return len;
}
