
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rcar_thermal_priv {int ctemp; int lock; int id; TYPE_1__* chip; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_filonoff; } ;


 int CPCTL ;
 int CTEMP ;
 int EINVAL ;
 int FILONOFF ;
 int INTCTRL ;
 int POSNEG ;
 int THSCR ;
 int THSSR ;
 int dev_dbg (struct device*,char*,int ,int,int) ;
 int dev_err (struct device*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rcar_has_irq_support (struct rcar_thermal_priv*) ;
 struct device* rcar_priv_to_dev (struct rcar_thermal_priv*) ;
 int rcar_thermal_bset (struct rcar_thermal_priv*,int ,int ,int ) ;
 int rcar_thermal_read (struct rcar_thermal_priv*,int ) ;
 int rcar_thermal_write (struct rcar_thermal_priv*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int rcar_thermal_update_temp(struct rcar_thermal_priv *priv)
{
 struct device *dev = rcar_priv_to_dev(priv);
 int i;
 u32 ctemp, old, new;
 int ret = -EINVAL;

 mutex_lock(&priv->lock);





 rcar_thermal_bset(priv, THSCR, CPCTL, CPCTL);

 ctemp = 0;
 old = ~0;
 for (i = 0; i < 128; i++) {





  udelay(300);

  new = rcar_thermal_read(priv, THSSR) & CTEMP;
  if (new == old) {
   ctemp = new;
   break;
  }
  old = new;
 }

 if (!ctemp) {
  dev_err(dev, "thermal sensor was broken\n");
  goto err_out_unlock;
 }




 if (rcar_has_irq_support(priv)) {
  if (priv->chip->has_filonoff)
   rcar_thermal_write(priv, FILONOFF, 0);


  rcar_thermal_write(priv, POSNEG, 0x1);
  rcar_thermal_write(priv, INTCTRL, (((ctemp - 0) << 8) |
         ((ctemp - 1) << 0)));
 }

 dev_dbg(dev, "thermal%d  %d -> %d\n", priv->id, priv->ctemp, ctemp);

 priv->ctemp = ctemp;
 ret = 0;
err_out_unlock:
 mutex_unlock(&priv->lock);
 return ret;
}
