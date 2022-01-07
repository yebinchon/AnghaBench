
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct s3c_hsudc {scalar_t__ regs; } ;


 scalar_t__ S3C_BR (int ) ;
 scalar_t__ S3C_BRCR ;
 scalar_t__ S3C_EP0SR ;
 int S3C_EP0SR_RX_SUCCESS ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void s3c_hsudc_read_setup_pkt(struct s3c_hsudc *hsudc, u16 *buf)
{
 int count;

 count = readl(hsudc->regs + S3C_BRCR);
 while (count--)
  *buf++ = (u16)readl(hsudc->regs + S3C_BR(0));

 writel(S3C_EP0SR_RX_SUCCESS, hsudc->regs + S3C_EP0SR);
}
