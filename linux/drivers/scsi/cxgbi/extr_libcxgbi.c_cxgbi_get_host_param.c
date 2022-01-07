
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char sockaddr ;
struct cxgbi_sock {int saddr; } ;
struct cxgbi_hba {TYPE_1__* ndev; int port_id; int cdev; } ;
struct Scsi_Host {int dummy; } ;
typedef enum iscsi_host_param { ____Placeholder_iscsi_host_param } iscsi_host_param ;
struct TYPE_2__ {char* name; int dev_addr; } ;


 int CXGBI_DBG_ISCSI ;
 int ENODEV ;



 int KERN_ERR ;
 struct cxgbi_sock* find_sock_on_port (int ,int ) ;
 int iscsi_host_get_param (struct Scsi_Host*,int,char*) ;
 struct cxgbi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 int log_debug (int,char*,char*,...) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;
 int sprintf (char*,char*,char*) ;
 int sysfs_format_mac (char*,int ,int) ;

int cxgbi_get_host_param(struct Scsi_Host *shost, enum iscsi_host_param param,
   char *buf)
{
 struct cxgbi_hba *chba = iscsi_host_priv(shost);
 int len = 0;

 if (!chba->ndev) {
  shost_printk(KERN_ERR, shost, "Could not get host param. "
    "netdev for host not set.\n");
  return -ENODEV;
 }

 log_debug(1 << CXGBI_DBG_ISCSI,
  "shost 0x%p, hba 0x%p,%s, param %d.\n",
  shost, chba, chba->ndev->name, param);

 switch (param) {
 case 130:
  len = sysfs_format_mac(buf, chba->ndev->dev_addr, 6);
  break;
 case 128:
  len = sprintf(buf, "%s\n", chba->ndev->name);
  break;
 case 129:
 {
  struct cxgbi_sock *csk = find_sock_on_port(chba->cdev,
          chba->port_id);
  if (csk) {
   len = sprintf(buf, "%pIS",
          (struct sockaddr *)&csk->saddr);
  }
  log_debug(1 << CXGBI_DBG_ISCSI,
     "hba %s, addr %s.\n", chba->ndev->name, buf);
  break;
 }
 default:
  return iscsi_host_get_param(shost, param, buf);
 }

 return len;
}
