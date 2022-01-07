
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qe_pin {int num; struct qe_gpio_chip* controller; } ;
struct qe_gpio_chip {int lock; int * pin_flags; } ;


 int QE_PIN_REQUESTED ;
 int kfree (struct qe_pin*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_clear_bit (int ,int *) ;

void qe_pin_free(struct qe_pin *qe_pin)
{
 struct qe_gpio_chip *qe_gc = qe_pin->controller;
 unsigned long flags;
 const int pin = qe_pin->num;

 spin_lock_irqsave(&qe_gc->lock, flags);
 test_and_clear_bit(QE_PIN_REQUESTED, &qe_gc->pin_flags[pin]);
 spin_unlock_irqrestore(&qe_gc->lock, flags);

 kfree(qe_pin);
}
