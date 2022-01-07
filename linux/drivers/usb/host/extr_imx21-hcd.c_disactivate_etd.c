
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx21 {scalar_t__ regs; struct etd_priv* etd; } ;
struct etd_priv {scalar_t__ active_count; } ;


 int DEBUG_LOG_FRAME (struct imx21*,struct etd_priv*,int ) ;
 int USBH_ETDDONEEN ;
 int USBH_ETDDONESTAT ;
 scalar_t__ USBH_ETDENCLR ;
 scalar_t__ USB_ETDDMACHANLCLR ;
 int clear_register_bits (struct imx21*,int ,int) ;
 int clear_toggle_bit (struct imx21*,int ,int) ;
 int disactivated ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void disactivate_etd(struct imx21 *imx21, int num)
{
 int etd_mask = (1 << num);
 struct etd_priv *etd = &imx21->etd[num];

 writel(etd_mask, imx21->regs + USBH_ETDENCLR);
 clear_register_bits(imx21, USBH_ETDDONEEN, etd_mask);
 writel(etd_mask, imx21->regs + USB_ETDDMACHANLCLR);
 clear_toggle_bit(imx21, USBH_ETDDONESTAT, etd_mask);

 etd->active_count = 0;

 DEBUG_LOG_FRAME(imx21, etd, disactivated);
}
