
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int wait_q; } ;


 int HZ ;
 int sisusb_outurb_available (struct sisusb_usb_data*) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int sisusb_get_free_outbuf(struct sisusb_usb_data *sisusb)
{
 int i, timeout = 5 * HZ;

 wait_event_timeout(sisusb->wait_q,
   ((i = sisusb_outurb_available(sisusb)) >= 0), timeout);

 return i;
}
