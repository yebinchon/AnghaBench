
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct spk_synth {int dummy; } ;


 char PROCSPEECH ;
 scalar_t__ dt_sendchar (char) ;

__attribute__((used)) static const char *synth_immediate(struct spk_synth *synth, const char *buf)
{
 u_char ch;

 while ((ch = *buf)) {
  if (ch == '\n')
   ch = PROCSPEECH;
  if (dt_sendchar(ch))
   return buf;
  buf++;
 }
 return ((void*)0);
}
