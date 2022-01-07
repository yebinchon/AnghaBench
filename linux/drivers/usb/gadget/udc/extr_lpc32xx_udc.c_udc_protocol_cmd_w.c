
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int udp_baseaddr; } ;


 int USBD_CCEMPTY ;
 int USBD_CMDCODE (int ) ;
 int USBD_DEVINTCLR (int ) ;
 int USBD_DEVINTST (int ) ;
 int cpu_relax () ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void udc_protocol_cmd_w(struct lpc32xx_udc *udc, u32 cmd)
{
 u32 pass = 0;
 int to;


 u32 tmp = readl(USBD_DEVINTST(udc->udp_baseaddr));
 (void) tmp;

 while (pass == 0) {
  writel(USBD_CCEMPTY, USBD_DEVINTCLR(udc->udp_baseaddr));


  writel(cmd, USBD_CMDCODE(udc->udp_baseaddr));
  to = 10000;
  while (((readl(USBD_DEVINTST(udc->udp_baseaddr)) &
    USBD_CCEMPTY) == 0) && (to > 0)) {
   to--;
  }

  if (to > 0)
   pass = 1;

  cpu_relax();
 }
}
