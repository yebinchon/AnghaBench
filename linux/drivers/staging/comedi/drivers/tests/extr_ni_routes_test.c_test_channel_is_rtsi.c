
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TRIGGER_LINE (int) ;
 int channel_is_rtsi (scalar_t__) ;
 int init_pci_fake () ;
 int unittest (int,char*) ;

void test_channel_is_rtsi(void)
{
 init_pci_fake();
 unittest(channel_is_rtsi(TRIGGER_LINE(0)),
   "check First rtsi channel\n");
 unittest(channel_is_rtsi(TRIGGER_LINE(3)),
   "check 3rd rtsi channel\n");
 unittest(channel_is_rtsi(TRIGGER_LINE(-1)),
   "check last rtsi channel\n");
 unittest(!channel_is_rtsi(TRIGGER_LINE(-1) + 1),
   "check first non rtsi channel\n");
}
