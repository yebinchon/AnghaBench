
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int dc_functions ;

__attribute__((used)) static int dc_get_functions_count(struct pinctrl_dev *pctldev)
{
 return ARRAY_SIZE(dc_functions);
}
