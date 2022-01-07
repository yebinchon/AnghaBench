
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int vexpress_reset_do (int ,char*) ;
 int vexpress_restart_device ;

__attribute__((used)) static int vexpress_restart(struct notifier_block *this, unsigned long mode,
        void *cmd)
{
 vexpress_reset_do(vexpress_restart_device, "restart");

 return NOTIFY_DONE;
}
