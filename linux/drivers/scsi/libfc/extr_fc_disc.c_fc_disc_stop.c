
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_disc {int disc_mutex; int disc_work; scalar_t__ pending; } ;
struct fc_lport {struct fc_disc disc; } ;


 int cancel_delayed_work_sync (int *) ;
 int fc_disc_stop_rports (struct fc_disc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fc_disc_stop(struct fc_lport *lport)
{
 struct fc_disc *disc = &lport->disc;

 if (disc->pending)
  cancel_delayed_work_sync(&disc->disc_work);
 mutex_lock(&disc->disc_mutex);
 fc_disc_stop_rports(disc);
 mutex_unlock(&disc->disc_mutex);
}
