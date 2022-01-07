
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_mah; } ;
struct ab8500_fg {TYPE_1__ bat_cap; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t charge_full_show(struct ab8500_fg *di, char *buf)
{
 return sprintf(buf, "%d\n", di->bat_cap.max_mah);
}
