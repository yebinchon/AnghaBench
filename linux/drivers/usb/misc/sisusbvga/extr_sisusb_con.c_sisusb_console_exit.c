
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {void* font_backup; scalar_t__ scrbuf; scalar_t__ haveconsole; scalar_t__* havethisconsole; } ;


 int MAX_NR_CONSOLES ;
 int console_lock () ;
 int console_unlock () ;
 int do_take_over_console (int *,int,int,int ) ;
 int sisusb_dummy_con ;
 int vfree (void*) ;

void
sisusb_console_exit(struct sisusb_usb_data *sisusb)
{
 int i;
 if (sisusb->haveconsole) {
  for (i = 0; i < MAX_NR_CONSOLES; i++)
   if (sisusb->havethisconsole[i]) {
    console_lock();
    do_take_over_console(&sisusb_dummy_con, i, i, 0);
    console_unlock();



   }
  sisusb->haveconsole = 0;
 }

 vfree((void *)sisusb->scrbuf);
 sisusb->scrbuf = 0;

 vfree(sisusb->font_backup);
 sisusb->font_backup = ((void*)0);
}
