
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_disc {int requested; int disc_id; scalar_t__ retry_count; scalar_t__ pending; int disc_callback; int disc_mutex; } ;


 int FC_DISC_DBG (struct fc_disc*,char*) ;
 int fc_disc_gpn_ft_req (struct fc_disc*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void fc_disc_restart(struct fc_disc *disc)
{
 lockdep_assert_held(&disc->disc_mutex);

 if (!disc->disc_callback)
  return;

 FC_DISC_DBG(disc, "Restarting discovery\n");

 disc->requested = 1;
 if (disc->pending)
  return;






 disc->disc_id = (disc->disc_id + 2) | 1;
 disc->retry_count = 0;
 fc_disc_gpn_ft_req(disc);
}
