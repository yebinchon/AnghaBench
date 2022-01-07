
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int wq; } ;
struct icm {int rescan_work; } ;


 scalar_t__ delayed_work_pending (int *) ;
 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int) ;
 struct icm* tb_priv (struct tb*) ;

__attribute__((used)) static void icm_postpone_rescan(struct tb *tb)
{
 struct icm *icm = tb_priv(tb);

 if (delayed_work_pending(&icm->rescan_work))
  mod_delayed_work(tb->wq, &icm->rescan_work,
     msecs_to_jiffies(500));
}
