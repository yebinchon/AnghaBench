
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_hsudc {scalar_t__ regs; } ;


 scalar_t__ S3C_EDR ;
 scalar_t__ S3C_EIER ;
 scalar_t__ S3C_EP0CR ;
 scalar_t__ S3C_SCR ;
 int S3C_SCR_DTZIEN_EN ;
 int S3C_SCR_RRD_EN ;
 int S3C_SCR_RST_EN ;
 int S3C_SCR_SUS_EN ;
 scalar_t__ S3C_TR ;
 int s3c_hsudc_setup_ep (struct s3c_hsudc*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s3c_hsudc_reconfig(struct s3c_hsudc *hsudc)
{
 writel(0xAA, hsudc->regs + S3C_EDR);
 writel(1, hsudc->regs + S3C_EIER);
 writel(0, hsudc->regs + S3C_TR);
 writel(S3C_SCR_DTZIEN_EN | S3C_SCR_RRD_EN | S3C_SCR_SUS_EN |
   S3C_SCR_RST_EN, hsudc->regs + S3C_SCR);
 writel(0, hsudc->regs + S3C_EP0CR);

 s3c_hsudc_setup_ep(hsudc);
}
