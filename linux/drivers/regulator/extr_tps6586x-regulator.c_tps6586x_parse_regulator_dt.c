
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6586x_platform_data {int dummy; } ;
struct platform_device {int dummy; } ;
struct of_regulator_match {int dummy; } ;



__attribute__((used)) static struct tps6586x_platform_data *tps6586x_parse_regulator_dt(
  struct platform_device *pdev,
  struct of_regulator_match **tps6586x_reg_matches)
{
 *tps6586x_reg_matches = ((void*)0);
 return ((void*)0);
}
