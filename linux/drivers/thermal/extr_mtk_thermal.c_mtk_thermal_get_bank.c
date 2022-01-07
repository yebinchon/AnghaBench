
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_thermal_bank {int id; struct mtk_thermal* mt; } ;
struct mtk_thermal {scalar_t__ thermal_base; int lock; TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ need_switch_bank; } ;


 scalar_t__ PTPCORESEL ;
 int mutex_lock (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtk_thermal_get_bank(struct mtk_thermal_bank *bank)
{
 struct mtk_thermal *mt = bank->mt;
 u32 val;

 if (mt->conf->need_switch_bank) {
  mutex_lock(&mt->lock);

  val = readl(mt->thermal_base + PTPCORESEL);
  val &= ~0xf;
  val |= bank->id;
  writel(val, mt->thermal_base + PTPCORESEL);
 }
}
