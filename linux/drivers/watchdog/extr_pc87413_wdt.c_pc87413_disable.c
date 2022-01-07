
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_lock ;
 int pc87413_disable_sw_wd_tren () ;
 int pc87413_disable_sw_wd_trg () ;
 int pc87413_programm_wdto (int ) ;
 int pc87413_swc_bank3 () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pc87413_disable(void)
{
 spin_lock(&io_lock);

 pc87413_swc_bank3();
 pc87413_disable_sw_wd_tren();
 pc87413_disable_sw_wd_trg();
 pc87413_programm_wdto(0);

 spin_unlock(&io_lock);
}
