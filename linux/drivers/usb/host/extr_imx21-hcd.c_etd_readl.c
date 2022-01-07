
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx21 {scalar_t__ regs; } ;


 scalar_t__ USB_ETD_DWORD (int,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static u32 etd_readl(struct imx21 *imx21, int etd_num, int dword)
{
 return readl(imx21->regs + USB_ETD_DWORD(etd_num, dword));
}
