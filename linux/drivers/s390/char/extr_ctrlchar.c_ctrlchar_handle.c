
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_3__ {unsigned char key; } ;


 unsigned int CTRLCHAR_CTRL ;
 unsigned int CTRLCHAR_NONE ;
 unsigned int CTRLCHAR_SYSRQ ;
 unsigned int EOF_CHAR (struct tty_struct*) ;
 unsigned int INTR_CHAR (struct tty_struct*) ;
 unsigned int SUSP_CHAR (struct tty_struct*) ;
 TYPE_1__ ctrlchar_sysrq ;
 int schedule_sysrq_work (TYPE_1__*) ;
 int tolower (unsigned char const) ;

unsigned int
ctrlchar_handle(const unsigned char *buf, int len, struct tty_struct *tty)
{
 if ((len < 2) || (len > 3))
  return CTRLCHAR_NONE;



 if ((buf[0] != '^') && (buf[0] != '\252'))
  return CTRLCHAR_NONE;
 if (len != 2)
  return CTRLCHAR_NONE;

 switch (tolower(buf[1])) {
 case 'c':
  return INTR_CHAR(tty) | CTRLCHAR_CTRL;
 case 'd':
  return EOF_CHAR(tty) | CTRLCHAR_CTRL;
 case 'z':
  return SUSP_CHAR(tty) | CTRLCHAR_CTRL;
 }
 return CTRLCHAR_NONE;
}
