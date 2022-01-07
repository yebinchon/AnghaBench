
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ccb {int dummy; } ;
struct aha1542_hostdata {scalar_t__ mb_handle; TYPE_1__* mb; scalar_t__ ccb_handle; } ;
struct Scsi_Host {int io_port; } ;
struct TYPE_2__ {int* ccbptr; scalar_t__ status; } ;


 int AHA1542_MAILBOXES ;
 int CMD_MBINIT ;
 int KERN_ERR ;
 int aha1542_intr_reset (int ) ;
 scalar_t__ aha1542_out (int ,int*,int) ;
 int any2scsi (int*,scalar_t__) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;
 struct aha1542_hostdata* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static void setup_mailboxes(struct Scsi_Host *sh)
{
 struct aha1542_hostdata *aha1542 = shost_priv(sh);
 u8 mb_cmd[5] = { CMD_MBINIT, AHA1542_MAILBOXES, 0, 0, 0};
 int i;

 for (i = 0; i < AHA1542_MAILBOXES; i++) {
  aha1542->mb[i].status = 0;
  any2scsi(aha1542->mb[i].ccbptr,
    aha1542->ccb_handle + i * sizeof(struct ccb));
  aha1542->mb[AHA1542_MAILBOXES + i].status = 0;
 };
 aha1542_intr_reset(sh->io_port);
 any2scsi(mb_cmd + 2, aha1542->mb_handle);
 if (aha1542_out(sh->io_port, mb_cmd, 5))
  shost_printk(KERN_ERR, sh, "failed setting up mailboxes\n");
 aha1542_intr_reset(sh->io_port);
}
