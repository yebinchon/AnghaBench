
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port_tts; } ;


 int dt_stat ;
 int inb_p (scalar_t__) ;
 TYPE_1__ speakup_info ;

__attribute__((used)) static int dt_getstatus(void)
{
 dt_stat = inb_p(speakup_info.port_tts) |
   (inb_p(speakup_info.port_tts + 1) << 8);
 return dt_stat;
}
