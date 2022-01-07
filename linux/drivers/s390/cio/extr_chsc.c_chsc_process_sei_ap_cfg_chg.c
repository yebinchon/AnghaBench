
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chsc_sei_nt0_area {int rs; } ;


 int CIO_CRW_EVENT (int,char*) ;
 int ap_bus_cfg_chg () ;

__attribute__((used)) static void chsc_process_sei_ap_cfg_chg(struct chsc_sei_nt0_area *sei_area)
{
 CIO_CRW_EVENT(3, "chsc: ap config changed\n");
 if (sei_area->rs != 5)
  return;

 ap_bus_cfg_chg();
}
