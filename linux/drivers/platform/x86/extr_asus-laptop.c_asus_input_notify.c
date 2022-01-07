
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int inputdev; } ;


 int pr_info (char*,int) ;
 int sparse_keymap_report_event (int ,int,int,int) ;

__attribute__((used)) static void asus_input_notify(struct asus_laptop *asus, int event)
{
 if (!asus->inputdev)
  return ;
 if (!sparse_keymap_report_event(asus->inputdev, event, 1, 1))
  pr_info("Unknown key %x pressed\n", event);
}
