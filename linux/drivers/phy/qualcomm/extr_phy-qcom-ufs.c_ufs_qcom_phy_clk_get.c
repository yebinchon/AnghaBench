
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int __ufs_qcom_phy_clk_get (struct device*,char const*,struct clk**,int) ;

__attribute__((used)) static int ufs_qcom_phy_clk_get(struct device *dev,
    const char *name, struct clk **clk_out)
{
 return __ufs_qcom_phy_clk_get(dev, name, clk_out, 1);
}
