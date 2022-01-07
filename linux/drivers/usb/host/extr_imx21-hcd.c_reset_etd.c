
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx21 {struct etd_priv* etd; } ;
struct etd_priv {int * bounce_buffer; int * td; int * ep; int * urb; } ;


 int disactivate_etd (struct imx21*,int) ;
 int etd_writel (struct imx21*,int,int,int ) ;

__attribute__((used)) static void reset_etd(struct imx21 *imx21, int num)
{
 struct etd_priv *etd = imx21->etd + num;
 int i;

 disactivate_etd(imx21, num);

 for (i = 0; i < 4; i++)
  etd_writel(imx21, num, i, 0);
 etd->urb = ((void*)0);
 etd->ep = ((void*)0);
 etd->td = ((void*)0);
 etd->bounce_buffer = ((void*)0);
}
