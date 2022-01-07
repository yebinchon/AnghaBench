
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tahvo_usb {int serialize; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int check_vbus_state (struct tahvo_usb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t tahvo_usb_vbus_interrupt(int irq, void *_tu)
{
 struct tahvo_usb *tu = _tu;

 mutex_lock(&tu->serialize);
 check_vbus_state(tu);
 mutex_unlock(&tu->serialize);

 return IRQ_HANDLED;
}
