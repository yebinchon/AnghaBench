
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbu2ss_udc {int udc_enabled; TYPE_1__* p_regs; int dev; } ;
struct TYPE_2__ {int USB_INT_ENA; int USB_CONTROL; int UTMI_CHARACTER_1; int EPCTR; int AHBMCTR; int AHBSCTR; } ;


 int DIRPD ;
 int EINVAL ;
 int EPC_DIRPD_DISABLE_TIME ;
 int EPC_PLL_LOCK_COUNT ;
 int EPC_RST ;
 int EPC_RST_DISABLE_TIME ;
 int HBUSREQ_MODE ;
 int HTRANS_MODE ;
 int INT_SEL ;
 int PLL_LOCK ;
 int SOF_RCV ;
 int USB_INT_EN_BIT ;
 int USB_SQUSET ;
 int WAIT_MODE ;
 int WBURST_TYPE ;
 int _nbu2ss_bitclr (int *,int) ;
 int _nbu2ss_bitset (int *,int) ;
 int _nbu2ss_ep0_enable (struct nbu2ss_udc*) ;
 int _nbu2ss_readl (int *) ;
 int _nbu2ss_writel (int *,int) ;
 int dev_err (int ,char*) ;
 int mdelay (int ) ;
 int udelay (int) ;

__attribute__((used)) static int _nbu2ss_enable_controller(struct nbu2ss_udc *udc)
{
 int waitcnt = 0;

 if (udc->udc_enabled)
  return 0;


 _nbu2ss_bitset(&udc->p_regs->EPCTR, (DIRPD | EPC_RST));
 udelay(EPC_RST_DISABLE_TIME);

 _nbu2ss_bitclr(&udc->p_regs->EPCTR, DIRPD);
 mdelay(EPC_DIRPD_DISABLE_TIME);

 _nbu2ss_bitclr(&udc->p_regs->EPCTR, EPC_RST);

 _nbu2ss_writel(&udc->p_regs->AHBSCTR, WAIT_MODE);

  _nbu2ss_writel(&udc->p_regs->AHBMCTR,
          HBUSREQ_MODE | HTRANS_MODE | WBURST_TYPE);

 while (!(_nbu2ss_readl(&udc->p_regs->EPCTR) & PLL_LOCK)) {
  waitcnt++;
  udelay(1);
  if (waitcnt == EPC_PLL_LOCK_COUNT) {
   dev_err(udc->dev, "*** Reset Cancel failed\n");
   return -EINVAL;
  }
 }

  _nbu2ss_bitset(&udc->p_regs->UTMI_CHARACTER_1, USB_SQUSET);

 _nbu2ss_bitset(&udc->p_regs->USB_CONTROL, (INT_SEL | SOF_RCV));


 _nbu2ss_ep0_enable(udc);


 _nbu2ss_bitset(&udc->p_regs->USB_INT_ENA, USB_INT_EN_BIT);

 udc->udc_enabled = 1;

 return 0;
}
