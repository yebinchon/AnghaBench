
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct olpc_ec_priv {int dummy; } ;


 int olpc_ec_set_dcon_power (struct olpc_ec_priv*,int) ;
 struct olpc_ec_priv* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int dcon_regulator_disable(struct regulator_dev *rdev)
{
 struct olpc_ec_priv *ec = rdev_get_drvdata(rdev);

 return olpc_ec_set_dcon_power(ec, 0);
}
