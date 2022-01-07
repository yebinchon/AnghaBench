
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_disc {int rports; int disc_mutex; int disc_work; } ;
struct fc_lport {struct fc_disc disc; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int fc_disc_timeout ;
 int mutex_init (int *) ;

void fc_disc_init(struct fc_lport *lport)
{
 struct fc_disc *disc = &lport->disc;

 INIT_DELAYED_WORK(&disc->disc_work, fc_disc_timeout);
 mutex_init(&disc->disc_mutex);
 INIT_LIST_HEAD(&disc->rports);
}
