
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dcon_priv {int asleep; scalar_t__ bl_val; int disp_mode; } ;


 int EC_DCON_POWER_MODE ;
 int MODE_BL_ENABLE ;
 int dcon_bus_stabilize (struct dcon_priv*,int) ;
 int dcon_set_backlight (struct dcon_priv*,scalar_t__) ;
 int olpc_board (int) ;
 int olpc_board_at_least (int ) ;
 int olpc_ec_cmd (int ,int *,int,int *,int ) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static void dcon_sleep(struct dcon_priv *dcon, bool sleep)
{
 int x;



 if (dcon->asleep == sleep)
  return;

 if (!olpc_board_at_least(olpc_board(0xc2)))
  return;

 if (sleep) {
  u8 pm = 0;

  x = olpc_ec_cmd(EC_DCON_POWER_MODE, &pm, 1, ((void*)0), 0);
  if (x)
   pr_warn("unable to force dcon to power down: %d!\n", x);
  else
   dcon->asleep = sleep;
 } else {

  if (dcon->bl_val != 0)
   dcon->disp_mode |= MODE_BL_ENABLE;
  x = dcon_bus_stabilize(dcon, 1);
  if (x)
   pr_warn("unable to reinit dcon hardware: %d!\n", x);
  else
   dcon->asleep = sleep;


  dcon_set_backlight(dcon, dcon->bl_val);
 }


}
