
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int e_d_tov; } ;
struct fc_frame {int dummy; } ;
struct fc_disc {scalar_t__ retry_count; scalar_t__ pending; int disc_work; } ;


 int DISC_EV_FAILED ;
 int FC_DISC_DBG (struct fc_disc*,char*,int ,scalar_t__,scalar_t__) ;
 int FC_DISC_RETRY_DELAY ;
 scalar_t__ FC_DISC_RETRY_LIMIT ;
 int FC_EX_CLOSED ;
 int FC_EX_TIMEOUT ;
 int PTR_ERR (struct fc_frame*) ;
 int fc_disc_done (struct fc_disc*,int ) ;
 struct fc_lport* fc_disc_lport (struct fc_disc*) ;
 unsigned long msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,unsigned long) ;

__attribute__((used)) static void fc_disc_error(struct fc_disc *disc, struct fc_frame *fp)
{
 struct fc_lport *lport = fc_disc_lport(disc);
 unsigned long delay = 0;

 FC_DISC_DBG(disc, "Error %ld, retries %d/%d\n",
      PTR_ERR(fp), disc->retry_count,
      FC_DISC_RETRY_LIMIT);

 if (!fp || PTR_ERR(fp) == -FC_EX_TIMEOUT) {




  if (disc->retry_count < FC_DISC_RETRY_LIMIT) {

   if (!fp)
    delay = msecs_to_jiffies(FC_DISC_RETRY_DELAY);
   else {
    delay = msecs_to_jiffies(lport->e_d_tov);


    if (!disc->retry_count)
     delay /= 4;
   }
   disc->retry_count++;
   schedule_delayed_work(&disc->disc_work, delay);
  } else
   fc_disc_done(disc, DISC_EV_FAILED);
 } else if (PTR_ERR(fp) == -FC_EX_CLOSED) {





  disc->pending = 0;
 }
}
