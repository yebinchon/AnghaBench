
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_request {int dummy; } ;
struct esas2r_adapter {int nvram_command_done; int nvram_waiter; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void complete_nvr_req(struct esas2r_adapter *a,
        struct esas2r_request *rq)
{
 a->nvram_command_done = 1;
 wake_up_interruptible(&a->nvram_waiter);
}
