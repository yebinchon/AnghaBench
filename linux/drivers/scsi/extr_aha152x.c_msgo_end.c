
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int CURRENT_SC ;
 int KERN_ERR ;
 int KERN_INFO ;
 scalar_t__ MSGOLEN ;
 scalar_t__ MSGO_I ;
 int SYNCNEG ;
 int scmd_printk (int ,int ,char*,...) ;

__attribute__((used)) static void msgo_end(struct Scsi_Host *shpnt)
{
 if(MSGO_I<MSGOLEN) {
  scmd_printk(KERN_ERR, CURRENT_SC,
       "message sent incompletely (%d/%d)\n",
       MSGO_I, MSGOLEN);
  if(SYNCNEG==1) {
   scmd_printk(KERN_INFO, CURRENT_SC,
        "Synchronous Data Transfer Request was rejected\n");
   SYNCNEG=2;
  }
 }

 MSGO_I = 0;
 MSGOLEN = 0;
}
