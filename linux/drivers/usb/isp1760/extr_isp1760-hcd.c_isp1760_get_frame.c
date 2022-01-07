
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {int regs; } ;
struct isp1760_hcd {int periodic_size; } ;


 int HC_FRINDEX ;
 struct isp1760_hcd* hcd_to_priv (struct usb_hcd*) ;
 int reg_read32 (int ,int ) ;

__attribute__((used)) static int isp1760_get_frame(struct usb_hcd *hcd)
{
 struct isp1760_hcd *priv = hcd_to_priv(hcd);
 u32 fr;

 fr = reg_read32(hcd->regs, HC_FRINDEX);
 return (fr >> 3) % priv->periodic_size;
}
