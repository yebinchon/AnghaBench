
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sisusb_usb_data {int haveconsole; int con_first; int con_last; int sisusb_cursor_loc; int sisusb_cursor_size_from; int sisusb_cursor_size_to; int sisusb_num_columns; int scrbuf_size; unsigned long scrbuf; int lock; TYPE_1__* sisusb_dev; int gfxinit; int SiS_Pr; } ;
struct TYPE_2__ {int dev; } ;


 int MAX_NR_CONSOLES ;
 int console_lock () ;
 int console_unlock () ;
 int dev_err (int *,char*) ;
 int do_take_over_console (int *,int,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sisusb_usb_data** mysisusbs ;
 int sisusb_con ;
 int sisusb_initialize (struct sisusb_usb_data*) ;
 scalar_t__ sisusb_reset_text_mode (struct sisusb_usb_data*,int) ;
 scalar_t__ vmalloc (int) ;

int
sisusb_console_init(struct sisusb_usb_data *sisusb, int first, int last)
{
 int i, ret;

 mutex_lock(&sisusb->lock);


 if (sisusb->haveconsole || !sisusb->SiS_Pr) {
  mutex_unlock(&sisusb->lock);
  return 1;
 }

 sisusb->con_first = first;
 sisusb->con_last = last;

 if (first > last ||
     first > MAX_NR_CONSOLES ||
     last > MAX_NR_CONSOLES) {
  mutex_unlock(&sisusb->lock);
  return 1;
 }


 if (!sisusb->gfxinit || first < 1 || last < 1) {
  mutex_unlock(&sisusb->lock);
  return 0;
 }

 sisusb->sisusb_cursor_loc = -1;
 sisusb->sisusb_cursor_size_from = -1;
 sisusb->sisusb_cursor_size_to = -1;


 if (sisusb_reset_text_mode(sisusb, 1)) {
  mutex_unlock(&sisusb->lock);
  dev_err(&sisusb->sisusb_dev->dev, "Failed to set up text mode\n");
  return 1;
 }


 sisusb_initialize(sisusb);

 for (i = first - 1; i <= last - 1; i++) {

  mysisusbs[i] = sisusb;
 }


 sisusb->sisusb_num_columns = 80;


 sisusb->scrbuf_size = 32 * 1024;


 if (!(sisusb->scrbuf = (unsigned long)vmalloc(sisusb->scrbuf_size))) {
  mutex_unlock(&sisusb->lock);
  dev_err(&sisusb->sisusb_dev->dev, "Failed to allocate screen buffer\n");
  return 1;
 }

 mutex_unlock(&sisusb->lock);


 console_lock();
 ret = do_take_over_console(&sisusb_con, first - 1, last - 1, 0);
 console_unlock();
 if (!ret)
  sisusb->haveconsole = 1;
 else {
  for (i = first - 1; i <= last - 1; i++)
   mysisusbs[i] = ((void*)0);
 }

 return ret;
}
