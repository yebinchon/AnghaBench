
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_usbmisc_data {int index; scalar_t__ disable_oc; int dev; } ;
struct imx_usbmisc {int base; } ;


 int EINVAL ;
 int VF610_OVER_CUR_DIS ;
 struct imx_usbmisc* dev_get_drvdata (int ) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int usbmisc_vf610_init(struct imx_usbmisc_data *data)
{
 struct imx_usbmisc *usbmisc = dev_get_drvdata(data->dev);
 u32 reg;





 if (data->index >= 1)
  return -EINVAL;

 if (data->disable_oc) {
  reg = readl(usbmisc->base);
  writel(reg | VF610_OVER_CUR_DIS, usbmisc->base);
 }

 return 0;
}
