
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int ce_arr ;
 int ce_mutex ;
 int cec_mod_work (int ) ;
 int decay_interval ;
 int do_spring_cleaning (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cec_work_fn(struct work_struct *work)
{
 mutex_lock(&ce_mutex);
 do_spring_cleaning(&ce_arr);
 mutex_unlock(&ce_mutex);

 cec_mod_work(decay_interval);
}
