
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_file {int dummy; } ;
struct ce_array {int n; int flags; int decays_done; int pfns_poisoned; int ces_entered; int * array; } ;


 int COUNT (int ) ;
 size_t DECAY (int ) ;
 int PFN (int ) ;
 int action_threshold ;
 int * bins ;
 struct ce_array ce_arr ;
 int ce_mutex ;
 int decay_interval ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int array_dump(struct seq_file *m, void *v)
{
 struct ce_array *ca = &ce_arr;
 int i;

 mutex_lock(&ce_mutex);

 seq_printf(m, "{ n: %d\n", ca->n);
 for (i = 0; i < ca->n; i++) {
  u64 this = PFN(ca->array[i]);

  seq_printf(m, " %3d: [%016llx|%s|%03llx]\n",
      i, this, bins[DECAY(ca->array[i])], COUNT(ca->array[i]));
 }

 seq_printf(m, "}\n");

 seq_printf(m, "Stats:\nCEs: %llu\nofflined pages: %llu\n",
     ca->ces_entered, ca->pfns_poisoned);

 seq_printf(m, "Flags: 0x%x\n", ca->flags);

 seq_printf(m, "Decay interval: %lld seconds\n", decay_interval);
 seq_printf(m, "Decays: %lld\n", ca->decays_done);

 seq_printf(m, "Action threshold: %lld\n", action_threshold);

 mutex_unlock(&ce_mutex);

 return 0;
}
