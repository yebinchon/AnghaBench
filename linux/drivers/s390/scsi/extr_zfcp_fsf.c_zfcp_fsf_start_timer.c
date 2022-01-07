
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; int function; } ;
struct zfcp_fsf_req {TYPE_1__ timer; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int zfcp_fsf_request_timeout_handler ;

__attribute__((used)) static void zfcp_fsf_start_timer(struct zfcp_fsf_req *fsf_req,
     unsigned long timeout)
{
 fsf_req->timer.function = zfcp_fsf_request_timeout_handler;
 fsf_req->timer.expires = jiffies + timeout;
 add_timer(&fsf_req->timer);
}
