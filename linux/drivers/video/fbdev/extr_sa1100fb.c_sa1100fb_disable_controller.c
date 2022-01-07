
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sa1100fb_info {int clk; int ctrlr_wait; scalar_t__ base; int dev; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int HZ ;
 scalar_t__ LCCR0 ;
 int LCCR0_LDM ;
 int LCCR0_LEN ;
 scalar_t__ LCSR ;
 int SHANNON_GPIO_DISP_EN ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int clk_disable_unprepare (int ) ;
 int current ;
 int dev_dbg (int ,char*) ;
 int gpio_set_value (int ,int ) ;
 scalar_t__ machine_is_shannon () ;
 int readl_relaxed (scalar_t__) ;
 int remove_wait_queue (int *,int *) ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 int wait ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sa1100fb_disable_controller(struct sa1100fb_info *fbi)
{
 DECLARE_WAITQUEUE(wait, current);
 u32 lccr0;

 dev_dbg(fbi->dev, "Disabling LCD controller\n");

 if (machine_is_shannon())
  gpio_set_value(SHANNON_GPIO_DISP_EN, 0);

 set_current_state(TASK_UNINTERRUPTIBLE);
 add_wait_queue(&fbi->ctrlr_wait, &wait);


 writel_relaxed(~0, fbi->base + LCSR);

 lccr0 = readl_relaxed(fbi->base + LCCR0);
 lccr0 &= ~LCCR0_LDM;
 writel_relaxed(lccr0, fbi->base + LCCR0);
 lccr0 &= ~LCCR0_LEN;
 writel_relaxed(lccr0, fbi->base + LCCR0);

 schedule_timeout(20 * HZ / 1000);
 remove_wait_queue(&fbi->ctrlr_wait, &wait);


 clk_disable_unprepare(fbi->clk);
}
