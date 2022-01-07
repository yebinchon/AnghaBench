
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trf7970a {int state; int dev; } ;


 int ECANCELED ;







 int pm_runtime_disable (int ) ;
 int pm_runtime_set_suspended (int ) ;
 int trf7970a_power_down (struct trf7970a*) ;
 int trf7970a_send_err_upstream (struct trf7970a*,int ) ;
 int trf7970a_switch_rf_off (struct trf7970a*) ;

__attribute__((used)) static void trf7970a_shutdown(struct trf7970a *trf)
{
 switch (trf->state) {
 case 129:
 case 131:
 case 130:
 case 128:
 case 132:
  trf7970a_send_err_upstream(trf, -ECANCELED);

 case 134:
 case 133:
  trf7970a_switch_rf_off(trf);
  break;
 default:
  break;
 }

 pm_runtime_disable(trf->dev);
 pm_runtime_set_suspended(trf->dev);

 trf7970a_power_down(trf);
}
