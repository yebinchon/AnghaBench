
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int sclp_vt220_emit_current () ;
 int sclp_vt220_flush_later ;
 int sclp_vt220_queue_running ;

__attribute__((used)) static void
sclp_vt220_flush_chars(struct tty_struct *tty)
{
 if (!sclp_vt220_queue_running)
  sclp_vt220_emit_current();
 else
  sclp_vt220_flush_later = 1;
}
