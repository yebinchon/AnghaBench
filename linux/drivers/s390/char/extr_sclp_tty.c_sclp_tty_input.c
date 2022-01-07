
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;



 unsigned int CTRLCHAR_MASK ;


 int TTY_NORMAL ;
 unsigned int ctrlchar_handle (unsigned char*,unsigned int,struct tty_struct*) ;
 int sclp_port ;
 int strncmp (char const*,char*,int) ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_char (int *,char,int ) ;
 int tty_insert_flip_string (int *,unsigned char*,unsigned int) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;

__attribute__((used)) static void
sclp_tty_input(unsigned char* buf, unsigned int count)
{
 struct tty_struct *tty = tty_port_tty_get(&sclp_port);
 unsigned int cchar;





 if (tty == ((void*)0))
  return;
 cchar = ctrlchar_handle(buf, count, tty);
 switch (cchar & CTRLCHAR_MASK) {
 case 128:
  break;
 case 130:
  tty_insert_flip_char(&sclp_port, cchar, TTY_NORMAL);
  tty_flip_buffer_push(&sclp_port);
  break;
 case 129:

  if (count < 2 ||
      (strncmp((const char *) buf + count - 2, "^n", 2) &&
       strncmp((const char *) buf + count - 2, "\252n", 2))) {

   tty_insert_flip_string(&sclp_port, buf, count);
   tty_insert_flip_char(&sclp_port, '\n', TTY_NORMAL);
  } else
   tty_insert_flip_string(&sclp_port, buf, count - 2);
  tty_flip_buffer_push(&sclp_port);
  break;
 }
 tty_kref_put(tty);
}
