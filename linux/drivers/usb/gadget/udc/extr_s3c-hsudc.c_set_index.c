
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_hsudc {scalar_t__ regs; } ;


 scalar_t__ S3C_IR ;
 int USB_ENDPOINT_NUMBER_MASK ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void set_index(struct s3c_hsudc *hsudc, int ep_addr)
{
 ep_addr &= USB_ENDPOINT_NUMBER_MASK;
 writel(ep_addr, hsudc->regs + S3C_IR);
}
