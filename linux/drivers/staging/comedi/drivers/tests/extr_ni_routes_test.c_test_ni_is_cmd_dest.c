
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NI_AI_ConvertClock ;
 int NI_AI_SampleClock ;
 int NI_AI_StartTrigger ;
 int NI_AO_SampleClock ;
 int NI_AO_SampleClockTimebase ;
 int NI_DO_SampleClock ;
 int init_pci_fake () ;
 int ni_is_cmd_dest (int ) ;
 int unittest (int,char*) ;

void test_ni_is_cmd_dest(void)
{
 init_pci_fake();
 unittest(ni_is_cmd_dest(NI_AI_SampleClock),
   "check that AI/SampleClock is cmd destination\n");
 unittest(ni_is_cmd_dest(NI_AI_StartTrigger),
   "check that AI/StartTrigger is cmd destination\n");
 unittest(ni_is_cmd_dest(NI_AI_ConvertClock),
   "check that AI/ConvertClock is cmd destination\n");
 unittest(ni_is_cmd_dest(NI_AO_SampleClock),
   "check that AO/SampleClock is cmd destination\n");
 unittest(ni_is_cmd_dest(NI_DO_SampleClock),
   "check that DO/SampleClock is cmd destination\n");
 unittest(!ni_is_cmd_dest(NI_AO_SampleClockTimebase),
   "check that AO/SampleClockTimebase _not_ cmd destination\n");
}
