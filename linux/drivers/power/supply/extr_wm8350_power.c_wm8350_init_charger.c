
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;


 int WM8350_IRQ_CHG_BAT_COLD ;
 int WM8350_IRQ_CHG_BAT_FAIL ;
 int WM8350_IRQ_CHG_BAT_HOT ;
 int WM8350_IRQ_CHG_END ;
 int WM8350_IRQ_CHG_FAST_RDY ;
 int WM8350_IRQ_CHG_START ;
 int WM8350_IRQ_CHG_TO ;
 int WM8350_IRQ_CHG_VBATT_LT_2P85 ;
 int WM8350_IRQ_CHG_VBATT_LT_3P1 ;
 int WM8350_IRQ_CHG_VBATT_LT_3P9 ;
 int WM8350_IRQ_EXT_BAT_FB ;
 int WM8350_IRQ_EXT_USB_FB ;
 int WM8350_IRQ_EXT_WALL_FB ;
 int wm8350_charger_handler ;
 int wm8350_register_irq (struct wm8350*,int ,int ,int ,char*,struct wm8350*) ;

__attribute__((used)) static void wm8350_init_charger(struct wm8350 *wm8350)
{

 wm8350_register_irq(wm8350, WM8350_IRQ_CHG_BAT_HOT,
       wm8350_charger_handler, 0, "Battery hot", wm8350);
 wm8350_register_irq(wm8350, WM8350_IRQ_CHG_BAT_COLD,
       wm8350_charger_handler, 0, "Battery cold", wm8350);
 wm8350_register_irq(wm8350, WM8350_IRQ_CHG_BAT_FAIL,
       wm8350_charger_handler, 0, "Battery fail", wm8350);
 wm8350_register_irq(wm8350, WM8350_IRQ_CHG_TO,
       wm8350_charger_handler, 0,
       "Charger timeout", wm8350);
 wm8350_register_irq(wm8350, WM8350_IRQ_CHG_END,
       wm8350_charger_handler, 0,
       "Charge end", wm8350);
 wm8350_register_irq(wm8350, WM8350_IRQ_CHG_START,
       wm8350_charger_handler, 0,
       "Charge start", wm8350);
 wm8350_register_irq(wm8350, WM8350_IRQ_CHG_FAST_RDY,
       wm8350_charger_handler, 0,
       "Fast charge ready", wm8350);
 wm8350_register_irq(wm8350, WM8350_IRQ_CHG_VBATT_LT_3P9,
       wm8350_charger_handler, 0,
       "Battery <3.9V", wm8350);
 wm8350_register_irq(wm8350, WM8350_IRQ_CHG_VBATT_LT_3P1,
       wm8350_charger_handler, 0,
       "Battery <3.1V", wm8350);
 wm8350_register_irq(wm8350, WM8350_IRQ_CHG_VBATT_LT_2P85,
       wm8350_charger_handler, 0,
       "Battery <2.85V", wm8350);


 wm8350_register_irq(wm8350, WM8350_IRQ_EXT_USB_FB,
       wm8350_charger_handler, 0, "USB", wm8350);
 wm8350_register_irq(wm8350, WM8350_IRQ_EXT_WALL_FB,
       wm8350_charger_handler, 0, "Wall", wm8350);
 wm8350_register_irq(wm8350, WM8350_IRQ_EXT_BAT_FB,
       wm8350_charger_handler, 0, "Battery", wm8350);
}
