
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_thermal_bank {struct mtk_thermal* mt; } ;
struct mtk_thermal {int lock; TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ need_switch_bank; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void mtk_thermal_put_bank(struct mtk_thermal_bank *bank)
{
 struct mtk_thermal *mt = bank->mt;

 if (mt->conf->need_switch_bank)
  mutex_unlock(&mt->lock);
}
