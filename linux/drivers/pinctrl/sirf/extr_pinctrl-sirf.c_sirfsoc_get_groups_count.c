
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int sirfsoc_pingrp_cnt ;

__attribute__((used)) static int sirfsoc_get_groups_count(struct pinctrl_dev *pctldev)
{
 return sirfsoc_pingrp_cnt;
}
