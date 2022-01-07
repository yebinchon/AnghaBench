
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int CURRENT_SC ;
 int DID_PARITY ;
 int KERN_ERR ;
 int done (struct Scsi_Host*,int) ;
 int scmd_printk (int ,int ,char*) ;

__attribute__((used)) static void parerr_run(struct Scsi_Host *shpnt)
{
 scmd_printk(KERN_ERR, CURRENT_SC, "parity error\n");
 done(shpnt, DID_PARITY << 16);
}
