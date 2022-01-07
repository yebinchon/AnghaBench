
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct oxu_hcd {int next_uframe; TYPE_1__* regs; } ;
struct TYPE_5__ {int state; } ;
struct TYPE_4__ {int command; int status; } ;


 int CMD_PSE ;
 int HC_STATE_HALT ;
 int STS_PSS ;
 int handshake (struct oxu_hcd*,int *,int ,int ,int) ;
 TYPE_2__* oxu_to_hcd (struct oxu_hcd*) ;
 int readl (int *) ;
 int usb_hc_died (TYPE_2__*) ;
 int writel (int,int *) ;

__attribute__((used)) static int disable_periodic(struct oxu_hcd *oxu)
{
 u32 cmd;
 int status;




 status = handshake(oxu, &oxu->regs->status, STS_PSS, STS_PSS, 9 * 125);
 if (status != 0) {
  oxu_to_hcd(oxu)->state = HC_STATE_HALT;
  usb_hc_died(oxu_to_hcd(oxu));
  return status;
 }

 cmd = readl(&oxu->regs->command) & ~CMD_PSE;
 writel(cmd, &oxu->regs->command);


 oxu->next_uframe = -1;
 return 0;
}
