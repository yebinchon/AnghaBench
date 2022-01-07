
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int ESCAPE_CODE ;
 int MODULE_LOADED_CODE ;
 unsigned long MODULE_STATE_COMING ;
 int add_event_entry (int ) ;
 int buffer_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
module_load_notify(struct notifier_block *self, unsigned long val, void *data)
{
 return 0;
}
