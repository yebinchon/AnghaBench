
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct controller {scalar_t__ hpc_reg; } ;


 int HZ ;
 scalar_t__ LED_CONTROL ;
 scalar_t__ SLOT_MASK ;
 int long_delay (int) ;
 int readb (scalar_t__) ;
 int readl (scalar_t__) ;
 int set_SOGO (struct controller*) ;
 int switch_leds (struct controller*,int,int*,int) ;
 int wait_for_ctrl_irq (struct controller*) ;
 int writel (int,scalar_t__) ;

int cpqhp_hardware_test(struct controller *ctrl, int test_num)
{
 u32 save_LED;
 u32 work_LED;
 int loop;
 int num_of_slots;

 num_of_slots = readb(ctrl->hpc_reg + SLOT_MASK) & 0x0f;

 switch (test_num) {
 case 1:




  save_LED = readl(ctrl->hpc_reg + LED_CONTROL);
  work_LED = 0x01010101;
  switch_leds(ctrl, num_of_slots, &work_LED, 0);
  switch_leds(ctrl, num_of_slots, &work_LED, 1);
  switch_leds(ctrl, num_of_slots, &work_LED, 0);
  switch_leds(ctrl, num_of_slots, &work_LED, 1);

  work_LED = 0x01010000;
  writel(work_LED, ctrl->hpc_reg + LED_CONTROL);
  switch_leds(ctrl, num_of_slots, &work_LED, 0);
  switch_leds(ctrl, num_of_slots, &work_LED, 1);
  work_LED = 0x00000101;
  writel(work_LED, ctrl->hpc_reg + LED_CONTROL);
  switch_leds(ctrl, num_of_slots, &work_LED, 0);
  switch_leds(ctrl, num_of_slots, &work_LED, 1);

  work_LED = 0x01010000;
  writel(work_LED, ctrl->hpc_reg + LED_CONTROL);
  for (loop = 0; loop < num_of_slots; loop++) {
   set_SOGO(ctrl);


   wait_for_ctrl_irq(ctrl);


   long_delay((3*HZ)/10);
   work_LED = work_LED >> 16;
   writel(work_LED, ctrl->hpc_reg + LED_CONTROL);

   set_SOGO(ctrl);


   wait_for_ctrl_irq(ctrl);


   long_delay((3*HZ)/10);
   work_LED = work_LED << 16;
   writel(work_LED, ctrl->hpc_reg + LED_CONTROL);
   work_LED = work_LED << 1;
   writel(work_LED, ctrl->hpc_reg + LED_CONTROL);
  }


  writel(save_LED, ctrl->hpc_reg + LED_CONTROL);

  set_SOGO(ctrl);


  wait_for_ctrl_irq(ctrl);
  break;
 case 2:

  break;
 case 3:

  break;
 }
 return 0;
}
