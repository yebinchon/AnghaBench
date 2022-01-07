
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr {int timer_work; } ;
struct fc_disc {void (* disc_callback ) (struct fc_lport*,int) ;int disc_id; int pending; int disc_mutex; struct fcoe_ctlr* priv; } ;
struct fc_lport {struct fc_disc disc; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void fcoe_ctlr_disc_start(void (*callback)(struct fc_lport *,
        enum fc_disc_event),
     struct fc_lport *lport)
{
 struct fc_disc *disc = &lport->disc;
 struct fcoe_ctlr *fip = disc->priv;

 mutex_lock(&disc->disc_mutex);
 disc->disc_callback = callback;
 disc->disc_id = (disc->disc_id + 2) | 1;
 disc->pending = 1;
 schedule_work(&fip->timer_work);
 mutex_unlock(&disc->disc_mutex);
}
