
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_lock ;
 int pc87413_enable_sw_wd_tren () ;
 int pc87413_enable_sw_wd_trg () ;
 int pc87413_enable_wden () ;
 int pc87413_programm_wdto (int ) ;
 int pc87413_swc_bank3 () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timeout ;

__attribute__((used)) static void pc87413_enable(void)
{
 spin_lock(&io_lock);

 pc87413_swc_bank3();
 pc87413_programm_wdto(timeout);
 pc87413_enable_wden();
 pc87413_enable_sw_wd_tren();
 pc87413_enable_sw_wd_trg();

 spin_unlock(&io_lock);
}
