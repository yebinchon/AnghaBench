
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int wait_for_status; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 void* PDA_PSY_TO_CHANGE ;
 void* ac_status ;
 int cancel_delayed_work (int *) ;
 int charger_work ;
 int msecs_to_jiffies (int ) ;
 void* pda_psy_ac ;
 void* pda_psy_usb ;
 TYPE_1__* pdata ;
 int schedule_delayed_work (int *,int ) ;
 void* usb_status ;

__attribute__((used)) static irqreturn_t power_changed_isr(int irq, void *power_supply)
{
 if (power_supply == pda_psy_ac)
  ac_status = PDA_PSY_TO_CHANGE;
 else if (power_supply == pda_psy_usb)
  usb_status = PDA_PSY_TO_CHANGE;
 else
  return IRQ_NONE;





 cancel_delayed_work(&charger_work);
 schedule_delayed_work(&charger_work,
         msecs_to_jiffies(pdata->wait_for_status));

 return IRQ_HANDLED;
}
