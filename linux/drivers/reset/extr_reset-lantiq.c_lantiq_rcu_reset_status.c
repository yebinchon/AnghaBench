
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reset_controller_dev {int dummy; } ;
struct lantiq_rcu_reset_priv {int status_offset; int regmap; } ;


 int BIT (unsigned int) ;
 int regmap_read (int ,int ,int*) ;
 struct lantiq_rcu_reset_priv* to_lantiq_rcu_reset_priv (struct reset_controller_dev*) ;

__attribute__((used)) static int lantiq_rcu_reset_status(struct reset_controller_dev *rcdev,
       unsigned long id)
{
 struct lantiq_rcu_reset_priv *priv = to_lantiq_rcu_reset_priv(rcdev);
 unsigned int status = (id >> 8) & 0x1f;
 u32 val;
 int ret;

 ret = regmap_read(priv->regmap, priv->status_offset, &val);
 if (ret)
  return ret;

 return !!(val & BIT(status));
}
