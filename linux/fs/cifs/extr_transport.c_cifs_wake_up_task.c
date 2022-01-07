
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {int callback_data; } ;


 int wake_up_process (int ) ;

void
cifs_wake_up_task(struct mid_q_entry *mid)
{
 wake_up_process(mid->callback_data);
}
