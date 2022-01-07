
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct watchdog_device {unsigned int timeout; } ;
struct esb_dev {int dummy; } ;


 int ESB_RELOAD_REG (struct esb_dev*) ;
 int ESB_TIMER1_REG (struct esb_dev*) ;
 int ESB_TIMER2_REG (struct esb_dev*) ;
 int ESB_WDT_RELOAD ;
 int esb_unlock_registers (struct esb_dev*) ;
 struct esb_dev* to_esb_dev (struct watchdog_device*) ;
 int writel (unsigned int,int ) ;
 int writew (int ,int ) ;

__attribute__((used)) static int esb_timer_set_heartbeat(struct watchdog_device *wdd,
  unsigned int time)
{
 struct esb_dev *edev = to_esb_dev(wdd);
 u32 val;





 val = time << 9;


 esb_unlock_registers(edev);
 writel(val, ESB_TIMER1_REG(edev));


 esb_unlock_registers(edev);
 writel(val, ESB_TIMER2_REG(edev));


 esb_unlock_registers(edev);
 writew(ESB_WDT_RELOAD, ESB_RELOAD_REG(edev));




 wdd->timeout = time;
 return 0;
}
