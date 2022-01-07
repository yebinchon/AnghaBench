
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx21 {struct etd_priv* etd; } ;
struct etd_priv {int alloc; } ;


 int USB_NUM_ETD ;
 int debug_etd_allocated (struct imx21*) ;
 int memset (struct etd_priv*,int ,int) ;

__attribute__((used)) static int alloc_etd(struct imx21 *imx21)
{
 int i;
 struct etd_priv *etd = imx21->etd;

 for (i = 0; i < USB_NUM_ETD; i++, etd++) {
  if (etd->alloc == 0) {
   memset(etd, 0, sizeof(imx21->etd[0]));
   etd->alloc = 1;
   debug_etd_allocated(imx21);
   return i;
  }
 }
 return -1;
}
