
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int adjust_compensation (unsigned int,unsigned int) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 unsigned int current_ratio ;
 int do_div (int,int) ;
 int idle_wakeup_counter ;
 int num_online_cpus () ;
 int pkg_state_counter () ;
 int rdtsc () ;
 int reduce_irq ;
 unsigned int set_target_ratio ;

__attribute__((used)) static bool powerclamp_adjust_controls(unsigned int target_ratio,
    unsigned int guard, unsigned int win)
{
 static u64 msr_last, tsc_last;
 u64 msr_now, tsc_now;
 u64 val64;


 msr_now = pkg_state_counter();
 tsc_now = rdtsc();


 if (!msr_last || !tsc_last)
  current_ratio = 1;
 else if (tsc_now-tsc_last) {
  val64 = 100*(msr_now-msr_last);
  do_div(val64, (tsc_now-tsc_last));
  current_ratio = val64;
 }


 msr_last = msr_now;
 tsc_last = tsc_now;

 adjust_compensation(target_ratio, win);




 reduce_irq = atomic_read(&idle_wakeup_counter) >=
  2 * win * num_online_cpus();

 atomic_set(&idle_wakeup_counter, 0);

 return set_target_ratio + guard <= current_ratio;
}
