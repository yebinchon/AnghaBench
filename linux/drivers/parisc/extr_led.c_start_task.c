
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LED_HASLCD ;
 int create_singlethread_workqueue (char*) ;
 scalar_t__ lcd_no_led_support ;
 int lcd_print (int ) ;
 int lcd_text_default ;
 int led_task ;
 scalar_t__ led_type ;
 int led_wq ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static int start_task(void)
{

 if (led_type == LED_HASLCD) lcd_print( lcd_text_default );


 if (lcd_no_led_support) return 0;


 led_wq = create_singlethread_workqueue("led_wq");
 queue_delayed_work(led_wq, &led_task, 0);

 return 0;
}
