
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int pr_err (char*) ;
 int register_xenbus_watch (int *) ;
 int target_watch ;

__attribute__((used)) static int balloon_init_watcher(struct notifier_block *notifier,
    unsigned long event,
    void *data)
{
 int err;

 err = register_xenbus_watch(&target_watch);
 if (err)
  pr_err("Failed to set balloon watcher\n");

 return NOTIFY_DONE;
}
