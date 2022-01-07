
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct spk_synth {int dummy; } ;


 char PROCSPEECH ;
 char const* oops () ;
 int outb_p (char,int ) ;
 scalar_t__ synth_full () ;
 int synth_port ;
 scalar_t__ synth_writable () ;
 int udelay (int) ;

__attribute__((used)) static const char *synth_immediate(struct spk_synth *synth, const char *buf)
{
 u_char ch;
 int timeout;

 while ((ch = *buf)) {
  if (ch == '\n')
   ch = PROCSPEECH;
  if (synth_full())
   return buf;
  timeout = 1000;
  while (synth_writable())
   if (--timeout <= 0)
    return oops();
  outb_p(ch, synth_port);
  udelay(70);
  buf++;
 }
 return ((void*)0);
}
