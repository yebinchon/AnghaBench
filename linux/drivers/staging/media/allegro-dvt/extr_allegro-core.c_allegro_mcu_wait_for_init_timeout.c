
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_dev {int init_complete; } ;


 int ETIMEDOUT ;
 int msecs_to_jiffies (unsigned long) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int allegro_mcu_wait_for_init_timeout(struct allegro_dev *dev,
          unsigned long timeout_ms)
{
 unsigned long tmo;

 tmo = wait_for_completion_timeout(&dev->init_complete,
       msecs_to_jiffies(timeout_ms));
 if (tmo == 0)
  return -ETIMEDOUT;

 reinit_completion(&dev->init_complete);
 return 0;
}
