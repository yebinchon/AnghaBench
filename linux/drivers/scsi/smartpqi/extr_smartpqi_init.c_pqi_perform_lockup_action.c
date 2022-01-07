
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emergency_restart () ;
 int panic (char*) ;
 int pqi_lockup_action ;

__attribute__((used)) static void pqi_perform_lockup_action(void)
{
 switch (pqi_lockup_action) {
 case 129:
  panic("FATAL: Smart Family Controller lockup detected");
  break;
 case 128:
  emergency_restart();
  break;
 case 130:
 default:
  break;
 }
}
