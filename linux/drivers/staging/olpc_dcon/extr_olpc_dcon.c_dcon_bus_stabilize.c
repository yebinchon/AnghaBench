
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dcon_priv {int dummy; } ;
struct TYPE_2__ {int (* bus_stabilize_wiggle ) () ;} ;


 int BUG_ON (int ) ;
 int DCON_REG_ID ;
 int EC_DCON_POWER_MODE ;
 int dcon_hw_init (struct dcon_priv*,int ) ;
 int dcon_read (struct dcon_priv*,int ) ;
 int msleep (int) ;
 int olpc_board (int) ;
 int olpc_board_at_least (int ) ;
 int olpc_ec_cmd (int ,int*,int,int *,int ) ;
 TYPE_1__* pdata ;
 int pr_err (char*) ;
 int pr_warn (char*,int) ;
 int stub1 () ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dcon_bus_stabilize(struct dcon_priv *dcon, int is_powered_down)
{
 unsigned long timeout;
 u8 pm;
 int x;

power_up:
 if (is_powered_down) {
  pm = 1;
  x = olpc_ec_cmd(EC_DCON_POWER_MODE, &pm, 1, ((void*)0), 0);
  if (x) {
   pr_warn("unable to force dcon to power up: %d!\n", x);
   return x;
  }
  usleep_range(10000, 11000);
 }

 pdata->bus_stabilize_wiggle();

 for (x = -1, timeout = 50; timeout && x < 0; timeout--) {
  usleep_range(1000, 1100);
  x = dcon_read(dcon, DCON_REG_ID);
 }
 if (x < 0) {
  pr_err("unable to stabilize dcon's smbus, reasserting power and praying.\n");
  BUG_ON(olpc_board_at_least(olpc_board(0xc2)));
  pm = 0;
  olpc_ec_cmd(EC_DCON_POWER_MODE, &pm, 1, ((void*)0), 0);
  msleep(100);
  is_powered_down = 1;
  goto power_up;
 }

 if (is_powered_down)
  return dcon_hw_init(dcon, 0);
 return 0;
}
