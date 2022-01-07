
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_disc {void (* disc_callback ) (struct fc_lport*,int) ;int disc_mutex; } ;
struct fc_lport {struct fc_disc disc; } ;


 int fc_disc_restart (struct fc_disc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fc_disc_start(void (*disc_callback)(struct fc_lport *,
      enum fc_disc_event),
     struct fc_lport *lport)
{
 struct fc_disc *disc = &lport->disc;






 mutex_lock(&disc->disc_mutex);
 disc->disc_callback = disc_callback;
 fc_disc_restart(disc);
 mutex_unlock(&disc->disc_mutex);
}
