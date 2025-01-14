
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_par {int (* SavageWaitFifo ) (struct savagefb_par*,int) ;scalar_t__ bci_ptr; } ;
struct fb_info {struct savagefb_par* par; } ;
struct fb_copyarea {int sx; int dx; int sy; int dy; int width; int height; } ;


 int BCI_CMD_DEST_GBD ;
 int BCI_CMD_RECT ;
 int BCI_CMD_RECT_XP ;
 int BCI_CMD_RECT_YP ;
 int BCI_CMD_SET_ROP (int,int ) ;
 int BCI_CMD_SRC_GBD ;
 int BCI_SEND (int) ;
 int BCI_W_H (int,int) ;
 int BCI_X_Y (int,int) ;
 int * savagefb_rop ;
 int stub1 (struct savagefb_par*,int) ;

void savagefb_copyarea(struct fb_info *info, const struct fb_copyarea *region)
{
 struct savagefb_par *par = info->par;
 int sx = region->sx, dx = region->dx;
 int sy = region->sy, dy = region->dy;
 int cmd;

 if (!region->width || !region->height)
  return;
 par->bci_ptr = 0;
 cmd = BCI_CMD_RECT | BCI_CMD_DEST_GBD | BCI_CMD_SRC_GBD;
 BCI_CMD_SET_ROP(cmd, savagefb_rop[0]);

 if (dx <= sx) {
  cmd |= BCI_CMD_RECT_XP;
 } else {
  sx += region->width - 1;
  dx += region->width - 1;
 }

 if (dy <= sy) {
  cmd |= BCI_CMD_RECT_YP;
 } else {
  sy += region->height - 1;
  dy += region->height - 1;
 }

 par->SavageWaitFifo(par,4);
 BCI_SEND(cmd);
 BCI_SEND(BCI_X_Y(sx, sy));
 BCI_SEND(BCI_X_Y(dx, dy));
 BCI_SEND(BCI_W_H(region->width, region->height));
}
