
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {int dummy; } ;


 int cifs_compound_callback (struct mid_q_entry*) ;
 int cifs_wake_up_task (struct mid_q_entry*) ;

__attribute__((used)) static void
cifs_compound_last_callback(struct mid_q_entry *mid)
{
 cifs_compound_callback(mid);
 cifs_wake_up_task(mid);
}
