
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int FAS216_Info ;


 int CMD_RESETCHIP ;
 int REG_CMD ;
 int fas216_checkmagic (int *) ;
 int fas216_writeb (int *,int ,int ) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

void fas216_remove(struct Scsi_Host *host)
{
 FAS216_Info *info = (FAS216_Info *)host->hostdata;

 fas216_checkmagic(info);
 scsi_remove_host(host);

 fas216_writeb(info, REG_CMD, CMD_RESETCHIP);
 scsi_host_put(host);
}
