
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct spk_synth {int dummy; } ;


 char PROCSPEECH ;
 int spk_out (char) ;
 scalar_t__ synth_full () ;

__attribute__((used)) static const char *synth_immediate(struct spk_synth *synth, const char *buf)
{
 u_char ch;

 while ((ch = (u_char)*buf)) {
  if (synth_full())
   return buf;
  if (ch == '\n')
   ch = PROCSPEECH;
  spk_out(ch);
  buf++;
 }
 return ((void*)0);
}
