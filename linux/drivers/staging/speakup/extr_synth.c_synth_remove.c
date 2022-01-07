
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spk_synth {int node; } ;


 int list_del (int *) ;
 scalar_t__ module_status ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spk_mutex ;
 struct spk_synth* synth ;
 int synth_release () ;

void synth_remove(struct spk_synth *in_synth)
{
 mutex_lock(&spk_mutex);
 if (synth == in_synth)
  synth_release();
 list_del(&in_synth->node);
 module_status = 0;
 mutex_unlock(&spk_mutex);
}
