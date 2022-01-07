
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtmc_file_data {int in_anchor; int submitted; } ;


 int usb_kill_anchored_urbs (int *) ;
 int usb_scuttle_anchored_urbs (int *) ;
 int usb_wait_anchor_empty_timeout (int *,int) ;

__attribute__((used)) static void usbtmc_draw_down(struct usbtmc_file_data *file_data)
{
 int time;

 time = usb_wait_anchor_empty_timeout(&file_data->submitted, 1000);
 if (!time)
  usb_kill_anchored_urbs(&file_data->submitted);
 usb_scuttle_anchored_urbs(&file_data->in_anchor);
}
