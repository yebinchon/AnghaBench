
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ revision; int boot_status; scalar_t__ supports_temp; int fw_ver_str; int io_addr; } ;


 int CMD_ISA_DELAY_TIME_2SECS ;
 scalar_t__ PCWD_REVISION_A ;
 scalar_t__ PCWD_REVISION_C ;
 int WDIOF_CARDRESET ;
 int WDIOF_OVERHEAT ;
 int pcwd_get_firmware () ;
 int pcwd_get_option_switches () ;
 TYPE_1__ pcwd_private ;
 int pr_emerg (char*) ;
 int pr_info (char*,...) ;
 int send_isa_command (int ) ;
 scalar_t__ set_command_mode () ;
 int unset_command_mode () ;

__attribute__((used)) static void pcwd_show_card_info(void)
{
 int option_switches;


 if (pcwd_private.revision == PCWD_REVISION_A)
  pr_info("ISA-PC Watchdog (REV.A) detected at port 0x%04x\n",
   pcwd_private.io_addr);
 else if (pcwd_private.revision == PCWD_REVISION_C) {
  pcwd_get_firmware();
  pr_info("ISA-PC Watchdog (REV.C) detected at port 0x%04x (Firmware version: %s)\n",
   pcwd_private.io_addr, pcwd_private.fw_ver_str);
  option_switches = pcwd_get_option_switches();
  pr_info("Option switches (0x%02x): Temperature Reset Enable=%s, Power On Delay=%s\n",
   option_switches,
   ((option_switches & 0x10) ? "ON" : "OFF"),
   ((option_switches & 0x08) ? "ON" : "OFF"));


  if (set_command_mode()) {
   send_isa_command(CMD_ISA_DELAY_TIME_2SECS);
   unset_command_mode();
  }
 }

 if (pcwd_private.supports_temp)
  pr_info("Temperature Option Detected\n");

 if (pcwd_private.boot_status & WDIOF_CARDRESET)
  pr_info("Previous reboot was caused by the card\n");

 if (pcwd_private.boot_status & WDIOF_OVERHEAT) {
  pr_emerg("Card senses a CPU Overheat. Panicking!\n");
  pr_emerg("CPU Overheat\n");
 }

 if (pcwd_private.boot_status == 0)
  pr_info("No previous trip detected - Cold boot or reset\n");
}
