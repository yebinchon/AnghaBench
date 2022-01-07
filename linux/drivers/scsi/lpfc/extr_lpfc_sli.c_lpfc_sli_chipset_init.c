
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_hba {scalar_t__ HAregaddr; scalar_t__ HCregaddr; void* link_state; scalar_t__ MBslimaddr; int HSregaddr; TYPE_1__* pport; } ;
struct TYPE_2__ {int port_state; } ;


 int EIO ;
 int ETIMEDOUT ;
 int HS_FFERM ;
 int HS_FFRDY ;
 int HS_MBRDY ;
 int KERN_ERR ;
 int LOG_INIT ;
 void* LPFC_HBA_ERROR ;
 int LPFC_VPORT_UNKNOWN ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,int ,int ) ;
 scalar_t__ lpfc_readl (int ,int*) ;
 int lpfc_sli_brdrestart (struct lpfc_hba*) ;
 int msleep (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

int
lpfc_sli_chipset_init(struct lpfc_hba *phba)
{
 uint32_t status, i = 0;


 if (lpfc_readl(phba->HSregaddr, &status))
  return -EIO;


 i = 0;
 while ((status & (HS_FFRDY | HS_MBRDY)) != (HS_FFRDY | HS_MBRDY)) {
  if (i++ >= 200) {


   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "0436 Adapter failed to init, "
     "timeout, status reg x%x, "
     "FW Data: A8 x%x AC x%x\n", status,
     readl(phba->MBslimaddr + 0xa8),
     readl(phba->MBslimaddr + 0xac));
   phba->link_state = LPFC_HBA_ERROR;
   return -ETIMEDOUT;
  }


  if (status & HS_FFERM) {



   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "0437 Adapter failed to init, "
     "chipset, status reg x%x, "
     "FW Data: A8 x%x AC x%x\n", status,
     readl(phba->MBslimaddr + 0xa8),
     readl(phba->MBslimaddr + 0xac));
   phba->link_state = LPFC_HBA_ERROR;
   return -EIO;
  }

  if (i <= 10)
   msleep(10);
  else if (i <= 100)
   msleep(100);
  else
   msleep(1000);

  if (i == 150) {

   phba->pport->port_state = LPFC_VPORT_UNKNOWN;
   lpfc_sli_brdrestart(phba);
  }

  if (lpfc_readl(phba->HSregaddr, &status))
   return -EIO;
 }


 if (status & HS_FFERM) {


  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0438 Adapter failed to init, chipset, "
    "status reg x%x, "
    "FW Data: A8 x%x AC x%x\n", status,
    readl(phba->MBslimaddr + 0xa8),
    readl(phba->MBslimaddr + 0xac));
  phba->link_state = LPFC_HBA_ERROR;
  return -EIO;
 }


 writel(0, phba->HCregaddr);
 readl(phba->HCregaddr);


 writel(0xffffffff, phba->HAregaddr);
 readl(phba->HAregaddr);
 return 0;
}
