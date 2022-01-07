
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int pids; int control; } ;


 int DBGP_ERR_BAD ;
 unsigned int DBGP_GO ;
 scalar_t__ DBGP_PID_GET (scalar_t__) ;
 int DBGP_TIMEOUT ;
 scalar_t__ USB_PID_NAK ;
 scalar_t__ USB_PID_NYET ;
 int dbgp_breath () ;
 int dbgp_not_safe ;
 int dbgp_wait_until_complete () ;
 TYPE_1__* ehci_debug ;
 scalar_t__ readl (int *) ;
 int writel (unsigned int,int *) ;

__attribute__((used)) static int dbgp_wait_until_done(unsigned ctrl, int loop)
{
 u32 pids, lpid;
 int ret;

retry:
 writel(ctrl | DBGP_GO, &ehci_debug->control);
 ret = dbgp_wait_until_complete();
 pids = readl(&ehci_debug->pids);
 lpid = DBGP_PID_GET(pids);

 if (ret < 0) {






  if (ret == -DBGP_TIMEOUT && !dbgp_not_safe)
   dbgp_not_safe = 1;
  if (ret == -DBGP_ERR_BAD && --loop > 0)
   goto retry;
  return ret;
 }





 if ((lpid == USB_PID_NAK) || (lpid == USB_PID_NYET))
  dbgp_breath();


 if (lpid == USB_PID_NAK) {
  if (--loop > 0)
   goto retry;
 }

 return ret;
}
