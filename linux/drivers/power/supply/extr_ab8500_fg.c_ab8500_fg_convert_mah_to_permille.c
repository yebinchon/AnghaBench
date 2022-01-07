
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_mah_design; } ;
struct ab8500_fg {TYPE_1__ bat_cap; } ;



__attribute__((used)) static int ab8500_fg_convert_mah_to_permille(struct ab8500_fg *di, int cap_mah)
{
 return (cap_mah * 1000) / di->bat_cap.max_mah_design;
}
