
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct esb_dev {int dummy; } ;


 int ESB_RELOAD_REG (struct esb_dev*) ;
 int ESB_WDT_RELOAD ;
 int esb_unlock_registers (struct esb_dev*) ;
 struct esb_dev* to_esb_dev (struct watchdog_device*) ;
 int writew (int ,int ) ;

__attribute__((used)) static int esb_timer_keepalive(struct watchdog_device *wdd)
{
 struct esb_dev *edev = to_esb_dev(wdd);

 esb_unlock_registers(edev);
 writew(ESB_WDT_RELOAD, ESB_RELOAD_REG(edev));

 return 0;
}
