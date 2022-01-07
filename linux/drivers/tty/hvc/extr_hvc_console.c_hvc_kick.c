
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hvc_kicked ;
 int hvc_task ;
 int wake_up_process (int ) ;

void hvc_kick(void)
{
 hvc_kicked = 1;
 wake_up_process(hvc_task);
}
