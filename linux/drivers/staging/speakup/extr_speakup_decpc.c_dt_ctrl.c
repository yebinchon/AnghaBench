
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {scalar_t__ port_tts; } ;


 int CMD_control ;
 int CMD_null ;
 int STAT_cmd_ready ;
 int dt_getstatus () ;
 int dt_sendcmd (int) ;
 int dt_waitbit (int) ;
 int outb_p (int ,scalar_t__) ;
 TYPE_1__ speakup_info ;
 int udelay (int) ;

__attribute__((used)) static int dt_ctrl(u_int cmd)
{
 int timeout = 10;

 if (!dt_waitbit(STAT_cmd_ready))
  return -1;
 outb_p(0, speakup_info.port_tts + 2);
 outb_p(0, speakup_info.port_tts + 3);
 dt_getstatus();
 dt_sendcmd(CMD_control | cmd);
 outb_p(0, speakup_info.port_tts + 6);
 while (dt_getstatus() & STAT_cmd_ready) {
  udelay(20);
  if (--timeout == 0)
   break;
 }
 dt_sendcmd(CMD_null);
 return 0;
}
