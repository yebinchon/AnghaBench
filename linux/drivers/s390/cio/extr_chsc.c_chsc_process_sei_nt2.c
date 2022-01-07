
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chsc_sei_nt2_area {int cc; int ccdf; } ;


 int CIO_CRW_EVENT (int,char*,int) ;
 int zpci_event_availability (int ) ;
 int zpci_event_error (int ) ;

__attribute__((used)) static void chsc_process_sei_nt2(struct chsc_sei_nt2_area *sei_area)
{
 switch (sei_area->cc) {
 case 1:
  zpci_event_error(sei_area->ccdf);
  break;
 case 2:
  zpci_event_availability(sei_area->ccdf);
  break;
 default:
  CIO_CRW_EVENT(2, "chsc: sei nt2 unhandled cc=%d\n",
         sei_area->cc);
  break;
 }
}
