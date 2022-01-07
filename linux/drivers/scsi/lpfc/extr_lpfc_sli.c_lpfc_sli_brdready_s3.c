
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_hba {int link_state; scalar_t__ MBslimaddr; int HSregaddr; TYPE_1__* pport; } ;
struct TYPE_2__ {int port_state; } ;


 int HS_FFERM ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_HBA_ERROR ;
 int LPFC_VPORT_UNKNOWN ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,int ,int ) ;
 scalar_t__ lpfc_readl (int ,int*) ;
 int lpfc_sli_brdrestart (struct lpfc_hba*) ;
 int msleep (int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int
lpfc_sli_brdready_s3(struct lpfc_hba *phba, uint32_t mask)
{
 uint32_t status;
 int i = 0;
 int retval = 0;


 if (lpfc_readl(phba->HSregaddr, &status))
  return 1;







 while (((status & mask) != mask) &&
        !(status & HS_FFERM) &&
        i++ < 20) {

  if (i <= 5)
   msleep(10);
  else if (i <= 10)
   msleep(500);
  else
   msleep(2500);

  if (i == 15) {

   phba->pport->port_state = LPFC_VPORT_UNKNOWN;
   lpfc_sli_brdrestart(phba);
  }

  if (lpfc_readl(phba->HSregaddr, &status)) {
   retval = 1;
   break;
  }
 }


 if ((status & HS_FFERM) || (i >= 20)) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "2751 Adapter failed to restart, "
    "status reg x%x, FW Data: A8 x%x AC x%x\n",
    status,
    readl(phba->MBslimaddr + 0xa8),
    readl(phba->MBslimaddr + 0xac));
  phba->link_state = LPFC_HBA_ERROR;
  retval = 1;
 }

 return retval;
}
