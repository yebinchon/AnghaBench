
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx21 {TYPE_1__* etd; int dev; } ;
struct TYPE_2__ {scalar_t__ alloc; } ;


 int USB_NUM_ETD ;
 int debug_etd_freed (struct imx21*) ;
 int dev_err (int ,char*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int reset_etd (struct imx21*,int) ;

__attribute__((used)) static void free_etd(struct imx21 *imx21, int num)
{
 if (num < 0)
  return;

 if (num >= USB_NUM_ETD) {
  dev_err(imx21->dev, "BAD etd=%d!\n", num);
  return;
 }
 if (imx21->etd[num].alloc == 0) {
  dev_err(imx21->dev, "ETD %d already free!\n", num);
  return;
 }

 debug_etd_freed(imx21);
 reset_etd(imx21, num);
 memset(&imx21->etd[num], 0, sizeof(imx21->etd[0]));
}
