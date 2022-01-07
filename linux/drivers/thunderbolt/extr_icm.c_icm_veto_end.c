
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int dev; } ;
struct icm {int veto; } ;


 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 struct icm* tb_priv (struct tb*) ;

__attribute__((used)) static void icm_veto_end(struct tb *tb)
{
 struct icm *icm = tb_priv(tb);

 if (icm->veto) {
  icm->veto = 0;

  pm_runtime_mark_last_busy(&tb->dev);
  pm_runtime_put_autosuspend(&tb->dev);
 }
}
