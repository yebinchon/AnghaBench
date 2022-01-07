
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_reset_priv {int dev; int regmap; struct uniphier_reset_data* data; } ;
struct uniphier_reset_data {unsigned long id; int flags; int bit; int reg; } ;
struct reset_controller_dev {int dummy; } ;


 unsigned int BIT (int ) ;
 int EINVAL ;
 int UNIPHIER_RESET_ACTIVE_LOW ;
 unsigned long UNIPHIER_RESET_ID_END ;
 int dev_err (int ,char*,unsigned long) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct uniphier_reset_priv* to_uniphier_reset_priv (struct reset_controller_dev*) ;

__attribute__((used)) static int uniphier_reset_status(struct reset_controller_dev *rcdev,
     unsigned long id)
{
 struct uniphier_reset_priv *priv = to_uniphier_reset_priv(rcdev);
 const struct uniphier_reset_data *p;

 for (p = priv->data; p->id != UNIPHIER_RESET_ID_END; p++) {
  unsigned int val;
  int ret, asserted;

  if (p->id != id)
   continue;

  ret = regmap_read(priv->regmap, p->reg, &val);
  if (ret)
   return ret;

  asserted = !!(val & BIT(p->bit));

  if (p->flags & UNIPHIER_RESET_ACTIVE_LOW)
   asserted = !asserted;

  return asserted;
 }

 dev_err(priv->dev, "reset_id=%lu was not found\n", id);
 return -EINVAL;
}
