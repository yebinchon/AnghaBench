
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int BUSFREE ;
 int CURRENT_SC ;
 int GETPORT (int ) ;
 int KERN_WARNING ;
 scalar_t__ MSGILEN ;
 scalar_t__ MSGOLEN ;
 int P_MSGI ;
 int SCSISIG ;
 int SETPORT (int ,int) ;
 int SIG_ATNO ;
 int SSTAT1 ;
 int scmd_printk (int ,int ,char*,scalar_t__) ;

__attribute__((used)) static void msgi_end(struct Scsi_Host *shpnt)
{
 if(MSGILEN>0)
  scmd_printk(KERN_WARNING, CURRENT_SC,
       "target left before message completed (%d)\n",
       MSGILEN);

 if (MSGOLEN > 0 && !(GETPORT(SSTAT1) & BUSFREE))
  SETPORT(SCSISIG, P_MSGI | SIG_ATNO);
}
