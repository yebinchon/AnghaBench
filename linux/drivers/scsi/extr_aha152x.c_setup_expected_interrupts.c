
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int phase; } ;
struct TYPE_6__ {TYPE_1__ SCp; } ;
struct TYPE_5__ {int in_intr; } ;


 TYPE_3__* CURRENT_SC ;
 scalar_t__ DISCONNECTED_SC ;
 int DMACNTRL0 ;
 int DMASTAT ;
 scalar_t__ DONE_SC ;
 int ENBUSFREE ;
 int ENPHASEMIS ;
 int ENSCSIPERR ;
 int ENSCSIRST ;
 int ENSELDI ;
 int ENSELDO ;
 int ENSELTIMO ;
 int ENSPIORDY ;
 TYPE_2__* HOSTDATA (struct Scsi_Host*) ;
 int INTEN ;
 int INTSTAT ;
 scalar_t__ ISSUE_SC ;
 int SELTO ;
 int SETBITS (int ,int ) ;
 int SETPORT (int ,int) ;
 int SIMODE0 ;
 int SIMODE1 ;
 int SSTAT1 ;
 scalar_t__ STATE ;
 int TESTHI (int ,int ) ;
 scalar_t__ seldi ;
 int selecting ;
 int spiordy ;

__attribute__((used)) static int setup_expected_interrupts(struct Scsi_Host *shpnt)
{
 if(CURRENT_SC) {
  CURRENT_SC->SCp.phase |= 1 << 16;

  if(CURRENT_SC->SCp.phase & selecting) {
   SETPORT(SSTAT1, SELTO);
   SETPORT(SIMODE0, ENSELDO | (DISCONNECTED_SC ? ENSELDI : 0));
   SETPORT(SIMODE1, ENSELTIMO);
  } else {
   SETPORT(SIMODE0, (CURRENT_SC->SCp.phase & spiordy) ? ENSPIORDY : 0);
   SETPORT(SIMODE1, ENPHASEMIS | ENSCSIRST | ENSCSIPERR | ENBUSFREE);
  }
 } else if(STATE==seldi) {
  SETPORT(SIMODE0, 0);
  SETPORT(SIMODE1, ENPHASEMIS | ENSCSIRST | ENSCSIPERR | ENBUSFREE);
 } else {
  SETPORT(SIMODE0, DISCONNECTED_SC ? ENSELDI : 0);
  SETPORT(SIMODE1, ENSCSIRST | ( (ISSUE_SC||DONE_SC) ? ENBUSFREE : 0));
 }

 if(!HOSTDATA(shpnt)->in_intr)
  SETBITS(DMACNTRL0, INTEN);

 return TESTHI(DMASTAT, INTSTAT);
}
