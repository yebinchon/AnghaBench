
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* unit_serial; } ;


 int sprintf (char*,char*,char*) ;
 TYPE_1__* to_t10_wwn (struct config_item*) ;

__attribute__((used)) static ssize_t target_wwn_vpd_unit_serial_show(struct config_item *item,
  char *page)
{
 return sprintf(page, "T10 VPD Unit Serial Number: %s\n",
  &to_t10_wwn(item)->unit_serial[0]);
}
