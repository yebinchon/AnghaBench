
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ams369fg06 {int dummy; } ;
struct TYPE_2__ {int * gamma_22_table; } ;


 int _ams369fg06_gamma_ctl (struct ams369fg06*,int ) ;
 TYPE_1__ gamma_table ;

__attribute__((used)) static int ams369fg06_gamma_ctl(struct ams369fg06 *lcd, int brightness)
{
 int ret = 0;
 int gamma = 0;

 if ((brightness >= 0) && (brightness <= 50))
  gamma = 0;
 else if ((brightness > 50) && (brightness <= 100))
  gamma = 1;
 else if ((brightness > 100) && (brightness <= 150))
  gamma = 2;
 else if ((brightness > 150) && (brightness <= 200))
  gamma = 3;
 else if ((brightness > 200) && (brightness <= 255))
  gamma = 4;

 ret = _ams369fg06_gamma_ctl(lcd, gamma_table.gamma_22_table[gamma]);

 return ret;
}
