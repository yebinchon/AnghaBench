
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int fc_lport_reset (struct fc_lport*) ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int bnx2fc_fcoe_reset(struct Scsi_Host *shost)
{
 struct fc_lport *lport = shost_priv(shost);
 fc_lport_reset(lport);
 return 0;
}
