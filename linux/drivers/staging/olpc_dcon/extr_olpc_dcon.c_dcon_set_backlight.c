
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dcon_priv {scalar_t__ bl_val; int disp_mode; } ;


 int DCON_REG_BRIGHT ;
 int DCON_REG_MODE ;
 int MODE_BL_ENABLE ;
 int dcon_write (struct dcon_priv*,int ,scalar_t__) ;

__attribute__((used)) static void dcon_set_backlight(struct dcon_priv *dcon, u8 level)
{
 dcon->bl_val = level;
 dcon_write(dcon, DCON_REG_BRIGHT, dcon->bl_val);


 if (dcon->bl_val == 0) {
  dcon->disp_mode &= ~MODE_BL_ENABLE;
  dcon_write(dcon, DCON_REG_MODE, dcon->disp_mode);
 } else if (!(dcon->disp_mode & MODE_BL_ENABLE)) {
  dcon->disp_mode |= MODE_BL_ENABLE;
  dcon_write(dcon, DCON_REG_MODE, dcon->disp_mode);
 }
}
