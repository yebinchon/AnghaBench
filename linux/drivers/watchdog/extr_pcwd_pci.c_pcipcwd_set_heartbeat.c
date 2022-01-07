
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_WRITE_WATCHDOG_TIMEOUT ;
 int EINVAL ;
 scalar_t__ VERBOSE ;
 scalar_t__ debug ;
 int heartbeat ;
 int pr_debug (char*,int) ;
 int send_command (int ,int*,int*) ;

__attribute__((used)) static int pcipcwd_set_heartbeat(int t)
{
 int t_msb = t / 256;
 int t_lsb = t % 256;

 if ((t < 0x0001) || (t > 0xFFFF))
  return -EINVAL;


 send_command(CMD_WRITE_WATCHDOG_TIMEOUT, &t_msb, &t_lsb);

 heartbeat = t;
 if (debug >= VERBOSE)
  pr_debug("New heartbeat: %d\n", heartbeat);

 return 0;
}
