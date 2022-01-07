
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sclp_conbuf_emit () ;
 int sclp_console_sync_queue () ;

__attribute__((used)) static void
sclp_console_flush(void)
{
 sclp_conbuf_emit();
 sclp_console_sync_queue();
}
