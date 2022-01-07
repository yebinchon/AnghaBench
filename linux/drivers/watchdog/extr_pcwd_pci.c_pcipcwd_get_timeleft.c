
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_READ_WATCHDOG_TIMEOUT ;
 scalar_t__ VERBOSE ;
 scalar_t__ debug ;
 int pr_debug (char*,int) ;
 int send_command (int ,int*,int*) ;

__attribute__((used)) static int pcipcwd_get_timeleft(int *time_left)
{
 int msb;
 int lsb;



 send_command(CMD_READ_WATCHDOG_TIMEOUT, &msb, &lsb);

 *time_left = (msb << 8) + lsb;

 if (debug >= VERBOSE)
  pr_debug("Time left before next reboot: %d\n", *time_left);

 return 0;
}
