
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port_tts; } ;


 int CMD_sync ;
 int STAT_cmd_ready ;
 int SYNTH_IO_EXTENT ;
 int dt_getstatus () ;
 int dt_sendcmd (int ) ;
 int dt_stat ;
 int dt_waitbit (int ) ;
 int pr_warn (char*,scalar_t__) ;
 TYPE_1__ speakup_info ;
 int synth_release_region (scalar_t__,int ) ;

__attribute__((used)) static int testkernel(void)
{
 int status = 0;

 if (dt_getstatus() == 0xffff) {
  status = -1;
  goto oops;
 }
 dt_sendcmd(CMD_sync);
 if (!dt_waitbit(STAT_cmd_ready))
  status = -2;
 else if (dt_stat & 0x8000)
  return 0;
 else if (dt_stat == 0x0dec)
  pr_warn("dec_pc at 0x%x, software not loaded\n",
   speakup_info.port_tts);
 status = -3;
oops: synth_release_region(speakup_info.port_tts, SYNTH_IO_EXTENT);
 speakup_info.port_tts = 0;
 return status;
}
