
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_usb_phy_data {int detect; } ;
typedef int irqreturn_t ;


 int DEBOUNCE_TIME ;
 int IRQ_HANDLED ;
 int mod_delayed_work (int ,int *,int ) ;
 int system_wq ;

__attribute__((used)) static irqreturn_t sun4i_usb_phy0_id_vbus_det_irq(int irq, void *dev_id)
{
 struct sun4i_usb_phy_data *data = dev_id;


 mod_delayed_work(system_wq, &data->detect, DEBOUNCE_TIME);

 return IRQ_HANDLED;
}
