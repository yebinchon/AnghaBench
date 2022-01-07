
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct berlin_reset_priv {int regmap; } ;


 int BIT (unsigned long) ;
 int regmap_write (int ,int,int) ;
 struct berlin_reset_priv* to_berlin_reset_priv (struct reset_controller_dev*) ;
 int udelay (int) ;

__attribute__((used)) static int berlin_reset_reset(struct reset_controller_dev *rcdev,
         unsigned long id)
{
 struct berlin_reset_priv *priv = to_berlin_reset_priv(rcdev);
 int offset = id >> 8;
 int mask = BIT(id & 0x1f);

 regmap_write(priv->regmap, offset, mask);


 udelay(10);

 return 0;
}
