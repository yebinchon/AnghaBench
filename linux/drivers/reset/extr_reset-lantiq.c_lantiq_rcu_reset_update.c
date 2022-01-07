
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reset_controller_dev {int dummy; } ;
struct lantiq_rcu_reset_priv {int dev; int reset_offset; int regmap; } ;


 int BIT (unsigned int) ;
 int dev_err (int ,char*,...) ;
 int lantiq_rcu_reset_status_timeout (struct reset_controller_dev*,unsigned long,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct lantiq_rcu_reset_priv* to_lantiq_rcu_reset_priv (struct reset_controller_dev*) ;

__attribute__((used)) static int lantiq_rcu_reset_update(struct reset_controller_dev *rcdev,
       unsigned long id, bool assert)
{
 struct lantiq_rcu_reset_priv *priv = to_lantiq_rcu_reset_priv(rcdev);
 unsigned int set = id & 0x1f;
 u32 val = assert ? BIT(set) : 0;
 int ret;

 ret = regmap_update_bits(priv->regmap, priv->reset_offset, BIT(set),
     val);
 if (ret) {
  dev_err(priv->dev, "Failed to set reset bit %u\n", set);
  return ret;
 }


 ret = lantiq_rcu_reset_status_timeout(rcdev, id, assert);
 if (ret)
  dev_err(priv->dev, "Failed to %s bit %u\n",
   assert ? "assert" : "deassert", set);

 return ret;
}
