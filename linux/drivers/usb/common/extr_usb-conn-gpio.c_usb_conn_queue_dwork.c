
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_conn_info {int dw_det; } ;


 int queue_delayed_work (int ,int *,unsigned long) ;
 int system_power_efficient_wq ;

__attribute__((used)) static void usb_conn_queue_dwork(struct usb_conn_info *info,
     unsigned long delay)
{
 queue_delayed_work(system_power_efficient_wq, &info->dw_det, delay);
}
