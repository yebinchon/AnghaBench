
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topstar_laptop {int input; } ;


 int pr_info (char*,int) ;
 int sparse_keymap_report_event (int ,int,int,int) ;

__attribute__((used)) static void topstar_input_notify(struct topstar_laptop *topstar, int event)
{
 if (!sparse_keymap_report_event(topstar->input, event, 1, 1))
  pr_info("unknown event = 0x%02x\n", event);
}
