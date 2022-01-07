
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* fbdev; int lcd_ck; } ;
struct TYPE_3__ {int dev; } ;


 unsigned long clk_get_rate (int ) ;
 int dev_warn (int ,char*,int) ;
 TYPE_2__ lcdc ;
 int max (int,int) ;

__attribute__((used)) static void calc_ck_div(int is_tft, int pck, int *pck_div)
{
 unsigned long lck;

 pck = max(1, pck);
 lck = clk_get_rate(lcdc.lcd_ck);
 *pck_div = (lck + pck - 1) / pck;
 if (is_tft)
  *pck_div = max(2, *pck_div);
 else
  *pck_div = max(3, *pck_div);
 if (*pck_div > 255) {

  *pck_div = 255;
  dev_warn(lcdc.fbdev->dev, "pixclock %d kHz too low.\n",
    pck / 1000);
 }
}
