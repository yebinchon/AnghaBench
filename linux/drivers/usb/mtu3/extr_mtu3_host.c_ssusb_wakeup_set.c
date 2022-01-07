
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {scalar_t__ uwk_en; } ;


 int ssusb_wakeup_ip_sleep_set (struct ssusb_mtk*,int) ;

void ssusb_wakeup_set(struct ssusb_mtk *ssusb, bool enable)
{
 if (ssusb->uwk_en)
  ssusb_wakeup_ip_sleep_set(ssusb, enable);
}
