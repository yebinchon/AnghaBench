
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct gdm* driver_data; } ;
struct gdm {int index; TYPE_1__* tty_dev; } ;
struct TYPE_2__ {int priv_dev; int (* send_func ) (int ,void*,int,int ,int ,struct gdm*) ;} ;


 int ENODEV ;
 int GDM_TTY_READY (struct gdm*) ;
 int MUX_TX_MAX_SIZE ;
 int gdm_tty_send_complete ;
 int min (int ,int) ;
 int stub1 (int ,void*,int,int ,int ,struct gdm*) ;

__attribute__((used)) static int gdm_tty_write(struct tty_struct *tty, const unsigned char *buf,
    int len)
{
 struct gdm *gdm = tty->driver_data;
 int remain = len;
 int sent_len = 0;
 int sending_len = 0;

 if (!GDM_TTY_READY(gdm))
  return -ENODEV;

 if (!len)
  return 0;

 while (1) {
  sending_len = min(MUX_TX_MAX_SIZE, remain);
  gdm->tty_dev->send_func(gdm->tty_dev->priv_dev,
     (void *)(buf + sent_len),
     sending_len,
     gdm->index,
     gdm_tty_send_complete,
     gdm);
  sent_len += sending_len;
  remain -= sending_len;
  if (remain <= 0)
   break;
 }

 return len;
}
