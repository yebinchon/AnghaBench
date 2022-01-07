
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int CONFIG_PPC ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 scalar_t__ of_machine_is_compatible (char*) ;

__attribute__((used)) static int of_empty_ranges_quirk(struct device_node *np)
{
 if (IS_ENABLED(CONFIG_PPC)) {

  static int quirk_state = -1;


  if (of_device_is_compatible(np, "1682m-sdc"))
   return 1;


  if (quirk_state < 0)
   quirk_state =
    of_machine_is_compatible("Power Macintosh") ||
    of_machine_is_compatible("MacRISC");
  return quirk_state;
 }
 return 0;
}
