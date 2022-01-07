
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_sd_listener {int list; } ;


 int list_add_tail (int *,int *) ;
 int sclp_sd_queue ;
 int sclp_sd_queue_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void sclp_sd_listener_add(struct sclp_sd_listener *listener)
{
 spin_lock_irq(&sclp_sd_queue_lock);
 list_add_tail(&listener->list, &sclp_sd_queue);
 spin_unlock_irq(&sclp_sd_queue_lock);
}
