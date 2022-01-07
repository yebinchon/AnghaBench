
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65910_board {int dummy; } ;
struct platform_device {int dummy; } ;
struct of_regulator_match {int dummy; } ;



__attribute__((used)) static inline struct tps65910_board *tps65910_parse_dt_reg_data(
   struct platform_device *pdev,
   struct of_regulator_match **tps65910_reg_matches)
{
 *tps65910_reg_matches = ((void*)0);
 return ((void*)0);
}
