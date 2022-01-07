
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {scalar_t__ port_tts; } ;


 int outb_p (int,scalar_t__) ;
 TYPE_1__ speakup_info ;

__attribute__((used)) static void dt_sendcmd(u_int cmd)
{
 outb_p(cmd & 0xFF, speakup_info.port_tts);
 outb_p((cmd >> 8) & 0xFF, speakup_info.port_tts + 1);
}
