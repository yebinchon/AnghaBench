
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mc13xxx_regulator_priv {int powermisc_pwgt_state; struct mc13xxx* mc13xxx; } ;
struct mc13xxx {int dummy; } ;


 int BUG_ON (int) ;
 int MC13892_POWERMISC ;
 int MC13892_POWERMISC_PWGTSPI_M ;
 int mc13xxx_lock (struct mc13xxx*) ;
 int mc13xxx_reg_read (struct mc13xxx*,int ,int*) ;
 int mc13xxx_reg_write (struct mc13xxx*,int ,int) ;
 int mc13xxx_unlock (struct mc13xxx*) ;

__attribute__((used)) static int mc13892_powermisc_rmw(struct mc13xxx_regulator_priv *priv, u32 mask,
     u32 val)
{
 struct mc13xxx *mc13892 = priv->mc13xxx;
 int ret;
 u32 valread;

 BUG_ON(val & ~mask);

 mc13xxx_lock(priv->mc13xxx);
 ret = mc13xxx_reg_read(mc13892, MC13892_POWERMISC, &valread);
 if (ret)
  goto out;


 priv->powermisc_pwgt_state =
  (priv->powermisc_pwgt_state & ~mask) | val;
 priv->powermisc_pwgt_state &= MC13892_POWERMISC_PWGTSPI_M;


 valread = (valread & ~mask) | val;

 valread = (valread & ~MC13892_POWERMISC_PWGTSPI_M) |
  priv->powermisc_pwgt_state;

 ret = mc13xxx_reg_write(mc13892, MC13892_POWERMISC, valread);
out:
 mc13xxx_unlock(priv->mc13xxx);
 return ret;
}
