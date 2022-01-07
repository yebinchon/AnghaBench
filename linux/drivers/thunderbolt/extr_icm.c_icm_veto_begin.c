
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int dev; } ;
struct icm {int veto; } ;


 int pm_runtime_get (int *) ;
 struct icm* tb_priv (struct tb*) ;

__attribute__((used)) static void icm_veto_begin(struct tb *tb)
{
 struct icm *icm = tb_priv(tb);

 if (!icm->veto) {
  icm->veto = 1;

  pm_runtime_get(&tb->dev);
 }
}
