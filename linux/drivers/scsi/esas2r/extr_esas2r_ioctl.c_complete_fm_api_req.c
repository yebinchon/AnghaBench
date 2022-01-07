
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_request {int dummy; } ;
struct esas2r_adapter {int fm_api_command_done; int fm_api_waiter; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void complete_fm_api_req(struct esas2r_adapter *a,
    struct esas2r_request *rq)
{
 a->fm_api_command_done = 1;
 wake_up_interruptible(&a->fm_api_waiter);
}
