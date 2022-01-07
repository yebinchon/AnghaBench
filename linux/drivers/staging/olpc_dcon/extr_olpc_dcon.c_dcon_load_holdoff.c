
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcon_priv {int load_time; } ;
typedef int ktime_t ;


 int NSEC_PER_MSEC ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 int mdelay (int) ;

__attribute__((used)) static void dcon_load_holdoff(struct dcon_priv *dcon)
{
 ktime_t delta_t, now;

 while (1) {
  now = ktime_get();
  delta_t = ktime_sub(now, dcon->load_time);
  if (ktime_to_ns(delta_t) > NSEC_PER_MSEC * 20)
   break;
  mdelay(4);
 }
}
