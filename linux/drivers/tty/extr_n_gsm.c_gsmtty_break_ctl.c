
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gsm_dlci* driver_data; } ;
struct gsm_dlci {scalar_t__ state; } ;


 scalar_t__ DLCI_CLOSED ;
 int EINVAL ;
 int gsmtty_modem_update (struct gsm_dlci*,int) ;

__attribute__((used)) static int gsmtty_break_ctl(struct tty_struct *tty, int state)
{
 struct gsm_dlci *dlci = tty->driver_data;
 int encode = 0;
 if (dlci->state == DLCI_CLOSED)
  return -EINVAL;

 if (state == -1)

  encode = 0x0F;
 else if (state > 0) {
  encode = state / 200;
  if (encode > 0x0F)
   encode = 0x0F;
 }
 return gsmtty_modem_update(dlci, encode);
}
