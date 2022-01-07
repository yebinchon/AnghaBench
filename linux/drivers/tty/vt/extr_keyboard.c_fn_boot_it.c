
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int ctrl_alt_del () ;

__attribute__((used)) static void fn_boot_it(struct vc_data *vc)
{
 ctrl_alt_del();
}
