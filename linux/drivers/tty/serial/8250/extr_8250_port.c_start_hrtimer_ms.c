
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef int ktime_t ;


 int HRTIMER_MODE_REL ;
 int hrtimer_start (struct hrtimer*,int ,int ) ;
 int ktime_set (long,long) ;

__attribute__((used)) static void start_hrtimer_ms(struct hrtimer *hrt, unsigned long msec)
{
 long sec = msec / 1000;
 long nsec = (msec % 1000) * 1000000;
 ktime_t t = ktime_set(sec, nsec);

 hrtimer_start(hrt, t, HRTIMER_MODE_REL);
}
