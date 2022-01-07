
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_reset_priv {int dev; int regmap; struct uniphier_reset_data* data; } ;
struct uniphier_reset_data {unsigned long id; int flags; int reg; int bit; } ;
struct reset_controller_dev {int dummy; } ;


 unsigned int BIT (int ) ;
 int EINVAL ;
 int UNIPHIER_RESET_ACTIVE_LOW ;
 unsigned long UNIPHIER_RESET_ID_END ;
 int dev_err (int ,char*,unsigned long) ;
 int regmap_write_bits (int ,int ,unsigned int,unsigned int) ;
 struct uniphier_reset_priv* to_uniphier_reset_priv (struct reset_controller_dev*) ;

__attribute__((used)) static int uniphier_reset_update(struct reset_controller_dev *rcdev,
     unsigned long id, int assert)
{
 struct uniphier_reset_priv *priv = to_uniphier_reset_priv(rcdev);
 const struct uniphier_reset_data *p;

 for (p = priv->data; p->id != UNIPHIER_RESET_ID_END; p++) {
  unsigned int mask, val;

  if (p->id != id)
   continue;

  mask = BIT(p->bit);

  if (assert)
   val = mask;
  else
   val = ~mask;

  if (p->flags & UNIPHIER_RESET_ACTIVE_LOW)
   val = ~val;

  return regmap_write_bits(priv->regmap, p->reg, mask, val);
 }

 dev_err(priv->dev, "reset_id=%lu was not handled\n", id);
 return -EINVAL;
}
