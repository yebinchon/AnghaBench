
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int otg_switch; scalar_t__ is_host; } ;


 int ssusb_host_disable (struct ssusb_mtk*,int) ;
 int ssusb_set_vbus (int *,int ) ;

__attribute__((used)) static void ssusb_host_cleanup(struct ssusb_mtk *ssusb)
{
 if (ssusb->is_host)
  ssusb_set_vbus(&ssusb->otg_switch, 0);

 ssusb_host_disable(ssusb, 0);
}
