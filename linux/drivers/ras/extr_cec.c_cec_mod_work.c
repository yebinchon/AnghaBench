
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HZ ;
 int cec_work ;
 int mod_delayed_work (int ,int *,int ) ;
 int round_jiffies (unsigned long) ;
 int system_wq ;

__attribute__((used)) static void cec_mod_work(unsigned long interval)
{
 unsigned long iv;

 iv = interval * HZ;
 mod_delayed_work(system_wq, &cec_work, round_jiffies(iv));
}
