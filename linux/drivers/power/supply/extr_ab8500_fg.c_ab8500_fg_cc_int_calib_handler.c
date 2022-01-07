
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_fg {int fg_periodic_work; int fg_wq; int calib_state; } ;
typedef int irqreturn_t ;


 int AB8500_FG_CALIB_END ;
 int IRQ_HANDLED ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static irqreturn_t ab8500_fg_cc_int_calib_handler(int irq, void *_di)
{
 struct ab8500_fg *di = _di;
 di->calib_state = AB8500_FG_CALIB_END;
 queue_delayed_work(di->fg_wq, &di->fg_periodic_work, 0);
 return IRQ_HANDLED;
}
