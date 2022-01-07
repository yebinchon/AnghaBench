
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {scalar_t__ retry_count; scalar_t__ max_retry_count; int e_d_tov; int retry_work; } ;
struct fc_frame {int dummy; } ;


 int FC_EX_CLOSED ;
 int FC_LPORT_DBG (struct fc_lport*,char*,int ,int ,scalar_t__) ;
 scalar_t__ IS_ERR (struct fc_frame*) ;
 int PTR_ERR (struct fc_frame*) ;
 int fc_lport_enter_reset (struct fc_lport*) ;
 int fc_lport_state (struct fc_lport*) ;
 unsigned long msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,unsigned long) ;

__attribute__((used)) static void fc_lport_error(struct fc_lport *lport, struct fc_frame *fp)
{
 unsigned long delay = 0;
 FC_LPORT_DBG(lport, "Error %ld in state %s, retries %d\n",
       IS_ERR(fp) ? -PTR_ERR(fp) : 0, fc_lport_state(lport),
       lport->retry_count);

 if (PTR_ERR(fp) == -FC_EX_CLOSED)
  return;






 if (lport->retry_count < lport->max_retry_count) {
  lport->retry_count++;
  if (!fp)
   delay = msecs_to_jiffies(500);
  else
   delay = msecs_to_jiffies(lport->e_d_tov);

  schedule_delayed_work(&lport->retry_work, delay);
 } else
  fc_lport_enter_reset(lport);
}
