
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int EV_BYTE_CHANNEL_MAX_BYTES ;
 scalar_t__ ehv_bc_console_byte_channel_send (int ,char*,unsigned int) ;
 int stdout_bc ;

__attribute__((used)) static void ehv_bc_console_write(struct console *co, const char *s,
     unsigned int count)
{
 char s2[EV_BYTE_CHANNEL_MAX_BYTES];
 unsigned int i, j = 0;
 char c;

 for (i = 0; i < count; i++) {
  c = *s++;

  if (c == '\n')
   s2[j++] = '\r';

  s2[j++] = c;
  if (j >= (EV_BYTE_CHANNEL_MAX_BYTES - 1)) {
   if (ehv_bc_console_byte_channel_send(stdout_bc, s2, j))
    return;
   j = 0;
  }
 }

 if (j)
  ehv_bc_console_byte_channel_send(stdout_bc, s2, j);
}
