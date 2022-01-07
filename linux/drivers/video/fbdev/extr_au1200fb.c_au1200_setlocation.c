
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct au1200fb_device {int fb_phys; } ;
struct TYPE_10__ {int winenable; TYPE_2__* window; } ;
struct TYPE_9__ {int Xres; int Yres; } ;
struct TYPE_8__ {TYPE_1__* w; } ;
struct TYPE_7__ {int winctrl0; int winctrl1; scalar_t__ winbufctrl; int winbuf1; int winbuf0; } ;
struct TYPE_6__ {int xres; int yres; int xpos; int ypos; } ;


 int LCD_WINCTRL0_A ;
 int LCD_WINCTRL0_AEN ;
 int LCD_WINCTRL1_SZX ;
 int LCD_WINCTRL1_SZY ;
 TYPE_5__* lcd ;
 TYPE_4__* panel ;
 TYPE_3__* win ;
 int winbpp (int) ;
 int wmb () ;

__attribute__((used)) static int au1200_setlocation (struct au1200fb_device *fbdev, int plane,
 int xpos, int ypos)
{
 uint32 winctrl0, winctrl1, winenable, fb_offset = 0;
 int xsz, ysz;



 winctrl0 = lcd->window[plane].winctrl0;
 winctrl1 = lcd->window[plane].winctrl1;
 winctrl0 &= (LCD_WINCTRL0_A | LCD_WINCTRL0_AEN);
 winctrl1 &= ~(LCD_WINCTRL1_SZX | LCD_WINCTRL1_SZY);


 xsz = win->w[plane].xres;
 ysz = win->w[plane].yres;
 if ((xpos + win->w[plane].xres) > panel->Xres) {

  xsz = panel->Xres - xpos;

 }

 if ((ypos + win->w[plane].yres) > panel->Yres) {

  ysz = panel->Yres - ypos;

 }

 if (xpos < 0) {

  xsz = win->w[plane].xres + xpos;
  fb_offset += (((0 - xpos) * winbpp(lcd->window[plane].winctrl1))/8);
  xpos = 0;

 }

 if (ypos < 0) {

  ysz = win->w[plane].yres + ypos;

  ypos = 0;

 }


 win->w[plane].xpos = xpos;
 win->w[plane].ypos = ypos;

 xsz -= 1;
 ysz -= 1;
 winctrl0 |= (xpos << 21);
 winctrl0 |= (ypos << 10);
 winctrl1 |= (xsz << 11);
 winctrl1 |= (ysz << 0);


 winenable = lcd->winenable & (1 << plane);
 wmb();
 lcd->winenable &= ~(1 << plane);
 lcd->window[plane].winctrl0 = winctrl0;
 lcd->window[plane].winctrl1 = winctrl1;
 lcd->window[plane].winbuf0 =
 lcd->window[plane].winbuf1 = fbdev->fb_phys;
 lcd->window[plane].winbufctrl = 0;
 lcd->winenable |= winenable;
 wmb();

 return 0;
}
