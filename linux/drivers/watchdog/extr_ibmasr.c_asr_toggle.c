
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __asr_toggle () ;
 int asr_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void asr_toggle(void)
{
 spin_lock(&asr_lock);
 __asr_toggle();
 spin_unlock(&asr_lock);
}
